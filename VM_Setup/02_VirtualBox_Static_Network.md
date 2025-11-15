# Setting up a Virtual Network in Virtual Box

This walkthrough assumes that you have done the previous walkthrough, or that you already have multiple VMs created.

In VirtualBox, select the File tab at the top left of the window and select "Preferences..."

Then click on "Expert". Now select Cancel. 

![Expert](img/vb11.png)

Now there will be more options available on the left side of the screen. Select the Network Icon, then select Create. 

![Expert](img/vb12.png)

With the new adapter selected, fill in the following information:

![Expert](img/vb13.png)

The first number could be any number in the range of 192.168.1-255.1, or really any other private IP range. 

The second number is the subnet mask, which tells the network adapter that is can route to anything that matches the first 3 octets of the given IPv4 Address. 

Now navigate to your machines. Select the first machine and then click on settings.

![Expert](img/vb14.png)

Select the network tab on the left. Now select Adapter 2 (the first one needs to remain to access the internet). select Host-only adapter in the "Attached to" drop down. Finally select the adapter that we just created in the previous step. Click OK.  

![Expert](img/vb15.png)

Follw the same steps as above for your other Virtual Machine or Machines. 

Once you complete these steps, open both machines. We will now configure their adapters with static IPs on the 192.168.10.1/24 subnet. 

## Configuring Static IP on Ubuntu

In the Ubuntu VM, click the bottom left icon and type settings into the search bar. Then Select system settings.

![Expert](img/ub01.png)

Select network settings, then click on the settings cog for the second Ethernet adapter. 

![Expert](img/ub02.png)

Now select IPv4 and configure it as such. Select Apply.

![Expert](img/ub03.png)

To verify that the change took effect. Open a terminal window and type `ip a` and hit enter. Search for the name of the Ethernet interface that you changed.

![Expert](img/ub04.png)

If the change did not take effect. Open the network setting and turn the Ethenet adapter on and off again with the toggle next to the settingss cog.

## Configuring Static IP on Kali

