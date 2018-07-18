```
root@sigma-test01-intern:~/mykubeflow-app# kubectl logs -f dist-mnist-worker-1ups-0-j735d
INFO|2018-07-18T09:54:34|/opt/launcher.py|63| Launcher started.
INFO|2018-07-18T09:54:34|/opt/launcher.py|78| Command to run: python /opt/mnist_replica.py --job_name=worker --ps_hosts=dist-mnist-ps-1ups-0:2222,dist-mnist-ps-1ups-1:2222 --worker_hosts=dist-mnist-worker-1ups-0:2222,dist-mnist-worker-1ups-1:2222,dist-mnist-worker-1ups-2:2222 --task_index=0
INFO|2018-07-18T09:54:34|/opt/launcher.py|30| Running python /opt/mnist_replica.py --job_name=worker --ps_hosts=dist-mnist-ps-1ups-0:2222,dist-mnist-ps-1ups-1:2222 --worker_hosts=dist-mnist-worker-1ups-0:2222,dist-mnist-worker-1ups-1:2222,dist-mnist-worker-1ups-2:2222 --task_index=0
INFO|2018-07-18T09:54:34|/opt/launcher.py|42| /usr/local/lib/python2.7/dist-packages/h5py/__init__.py:36: FutureWarning: Conversion of the second argument of issubdtype from `float` to `np.floating` is deprecated. In future, it will be treated as `np.float64 == np.dtype(float).type`.
INFO|2018-07-18T09:54:34|/opt/launcher.py|42| from ._conv import register_converters as _register_converters
INFO|2018-07-18T09:54:35|/opt/launcher.py|42| WARNING:tensorflow:From /usr/local/lib/python2.7/dist-packages/tensorflow/contrib/learn/python/learn/datasets/base.py:198: retry (from tensorflow.contrib.learn.python.learn.datasets.base) is deprecated and will be removed in a future version.
INFO|2018-07-18T09:54:35|/opt/launcher.py|42| Instructions for updating:
INFO|2018-07-18T09:54:35|/opt/launcher.py|42| Use the retry module or similar alternatives.
INFO|2018-07-18T09:54:35|/opt/launcher.py|42| WARNING:tensorflow:From /opt/mnist_replica.py:90: read_data_sets (from tensorflow.contrib.learn.python.learn.datasets.mnist) is deprecated and will be removed in a future version.
INFO|2018-07-18T09:54:35|/opt/launcher.py|42| Instructions for updating:
INFO|2018-07-18T09:54:35|/opt/launcher.py|42| Please use alternatives such as official/mnist/dataset.py from tensorflow/models.
INFO|2018-07-18T09:54:36|/opt/launcher.py|42| WARNING:tensorflow:From /usr/local/lib/python2.7/dist-packages/tensorflow/contrib/learn/python/learn/datasets/mnist.py:260: maybe_download (from tensorflow.contrib.learn.python.learn.datasets.base) is deprecated and will be removed in a future version.
INFO|2018-07-18T09:54:36|/opt/launcher.py|42| Instructions for updating:
INFO|2018-07-18T09:54:36|/opt/launcher.py|42| Please write your own downloading logic.
INFO|2018-07-18T09:54:36|/opt/launcher.py|42| WARNING:tensorflow:From /usr/local/lib/python2.7/dist-packages/tensorflow/contrib/learn/python/learn/datasets/base.py:219: wrapped_fn (from tensorflow.contrib.learn.python.learn.datasets.base) is deprecated and will be removed in a future version.
INFO|2018-07-18T09:54:36|/opt/launcher.py|42| Instructions for updating:
INFO|2018-07-18T09:54:36|/opt/launcher.py|42| Please use urllib or similar directly.
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| Traceback (most recent call last):
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/opt/mnist_replica.py", line 273, in <module>
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| tf.app.run()
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/local/lib/python2.7/dist-packages/tensorflow/python/platform/app.py", line 126, in run
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| _sys.exit(main(argv))
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/opt/mnist_replica.py", line 90, in main
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| mnist = input_data.read_data_sets(FLAGS.data_dir, one_hot=True)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/local/lib/python2.7/dist-packages/tensorflow/python/util/deprecation.py", line 250, in new_func
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| return func(*args, **kwargs)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/local/lib/python2.7/dist-packages/tensorflow/contrib/learn/python/learn/datasets/mnist.py", line 260, in read_data_sets
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| source_url + TRAIN_IMAGES)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/local/lib/python2.7/dist-packages/tensorflow/python/util/deprecation.py", line 250, in new_func
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| return func(*args, **kwargs)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/local/lib/python2.7/dist-packages/tensorflow/contrib/learn/python/learn/datasets/base.py", line 219, in maybe_download
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| temp_file_name, _ = urlretrieve_with_retry(source_url)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/local/lib/python2.7/dist-packages/tensorflow/python/util/deprecation.py", line 250, in new_func
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| return func(*args, **kwargs)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/local/lib/python2.7/dist-packages/tensorflow/contrib/learn/python/learn/datasets/base.py", line 172, in wrapped_fn
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| return fn(*args, **kwargs)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/local/lib/python2.7/dist-packages/tensorflow/contrib/learn/python/learn/datasets/base.py", line 200, in urlretrieve_with_retry
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| return urllib.request.urlretrieve(url, filename)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/lib/python2.7/urllib.py", line 98, in urlretrieve
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| return opener.retrieve(url, filename, reporthook, data)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/lib/python2.7/urllib.py", line 245, in retrieve
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| fp = self.open(url, data)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/lib/python2.7/urllib.py", line 213, in open
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| return getattr(self, name)(url)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/lib/python2.7/urllib.py", line 443, in open_https
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| h.endheaders(data)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/lib/python2.7/httplib.py", line 1053, in endheaders
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| self._send_output(message_body)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/lib/python2.7/httplib.py", line 897, in _send_output
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| self.send(msg)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/lib/python2.7/httplib.py", line 859, in send
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| self.connect()
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/lib/python2.7/httplib.py", line 1270, in connect
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| HTTPConnection.connect(self)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/lib/python2.7/httplib.py", line 836, in connect
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| self.timeout, self.source_address)
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| File "/usr/lib/python2.7/socket.py", line 557, in create_connection
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| for res in getaddrinfo(host, port, 0, SOCK_STREAM):
INFO|2018-07-18T09:54:56|/opt/launcher.py|42| IOError: [Errno socket error] [Errno -3] Temporary failure in name resolution
Traceback (most recent call last):
  File "/opt/launcher.py", line 84, in <module>
    run_and_stream(command)
  File "/opt/launcher.py", line 54, in run_and_stream
    " ".join(cmd), process.returncode))
ValueError: cmd: python /opt/mnist_replica.py --job_name=worker --ps_hosts=dist-mnist-ps-1ups-0:2222,dist-mnist-ps-1ups-1:2222 --worker_hosts=dist-mnist-worker-1ups-0:2222,dist-mnist-worker-1ups-1:2222,dist-mnist-worker-1ups-2:2222 --task_index=0 exited with code 1
```
