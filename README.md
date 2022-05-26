# lewd-licorice
Minikube templates for various application stacks

## 
Run this in a separate terminal to start a local container registry. 
<pre>docker run --rm -it --network=host alpine ash -c "apk add socat && socat TCP-LISTEN:5000,reuseaddr,fork TCP:$(minikube ip):5000"</pre>
<pre>./startup.sh</pre>



<img title="Lewd" alt="Alt text" src="/images/01.jpg" width="500" height="400" align="center">
 "robot licorice" by substack is licensed under CC BY-SA 2.0. To view a copy of this license, visit https://creativecommons.org/licenses/by-sa/2.0/?ref=openverse.

