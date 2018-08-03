#!/bin/bash
# This script creates a kubernetes persistent volume with no storageclass
# It serves for the kubeflow component —— tf-hub
# since the tf-hub create a new notebook with mount to a pv with no storageclass

set -xe

uuid=`uuidgen`
uuid=${uuid:0:8}

CEPHFS_PV_YAML_TMP=/tmp/cephfs-pv-${uuid}.yaml
TF_TENSORBOARD_YAML_TMP=/tmp/tf-tensorboard-${uuid}.yaml

curl -sSL "https://raw.githubusercontent.com/banbanandroid/static/master/cephfs-pv.yaml" > ${CEPHFS_PV_YAML_TMP}

curl -sSL "https://raw.githubusercontent.com/banbanandroid/static/master/tf_tensorboard.yaml" > ${TF_TENSORBOARD_YAML_TMP}

sed -i "s/uuidgen/${uuid}/g" ${CEPHFS_PV_YAML_TMP}
sed -i "s/uuidgen/${uuid}/g" ${TF_TENSORBOARD_YAML_TMP}

cat ${CEPHFS_PV_YAML_TMP}
cat ${TF_TENSORBOARD_YAML_TMP}

kubectl create -f ${CEPHFS_PV_YAML_TMP}
kubectl create -f ${TF_TENSORBOARD_YAML_TMP}

kubectl get pv

kubectl get pvc

if [ ! -d "/cephfs/jupyterhubpv/${uuid}" ];then
        sleep 2
else
        chmod -R 777 /cephfs/jupyterhubpv/${uuid}
fi

set +xe

TENSORBOARD_PORT=`kubectl get svc | grep tensorboard-manual-${uuid} | awk '{print $5}'`
TENSORBOARD_PORT=${TENSORBOARD_PORT##*:}
TENSORBOARD_PORT=${TENSORBOARD_PORT%/*}

JUPYTER_HUB_PORT=`kubectl get svc | grep tf-hub-lb | awk '{print $5}'`
JUPYTER_HUB_PORT=${JUPYTER_HUB_PORT##*:}
JUPYTER_HUB_PORT=${JUPYTER_HUB_PORT%/*}

echo "Your jupyter_hub address: http://10.82.45.43:"$JUPYTER_HUB_PORT
echo "Your tensorboard address: http://10.82.45.43:"$TENSORBOARD_PORT
