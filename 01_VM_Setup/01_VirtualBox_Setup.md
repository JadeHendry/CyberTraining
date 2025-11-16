# Setting up Virtual Box

## Table of Contents
1. [Install VirtualBox and Kali](#install-virtual-box)
2. [Opening a VM From and ISO](#opening-a-vm-from-an-iso-file)
3. [Useful Tips Inside the VM](#useful-tips-inside-the-vm)

## Install Virtual Box and Kali

Follow this link to the download page for [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

Select the option that applies to you. This this example we will select "Windows hosts" to download the file. 
![VB Download](img/vb01.png)

Double click the downloaded file and follow the prompts. Agree to the terms and select the default configurations and then select install and finish.

For this example walkthrough we will download and install a distribution of [Kali Linux](https://www.kali.org/get-kali/#kali-platforms).

Select the option on the right to download a pre-built virtual machine. 

![Kali Selection](img/kali01.png)

Then select the version that you want. For this walkthrough, select VirtualBox:

![Kali Download](img/kali02.png)

Right click and select "Extract All", then save the image onto your machine. You should now see a .vbox and a .vdi file. Double click the .vbox file. This should open Virtual Box as such: 

![VBox](img/vb02.png)

This will load the images with a default configuration. Note that this machine has a very small amount of memory and processors. We con change this by clicking on the settings cog. 

![Settings](img/vb03.png)

We can increase memory. It is reccommended to stay within the green range on the slider. For my system, I will give it 16382MB and 16 CPU Cores in the Processor section. You may give it more resources if necessary. 

There are many more options. Of note we will look at the network settings. 

![Network Settings](img/vb04.png)

Note that the adapter is set to Network Address Translation (NAT) by default. NAT is a networking mode commonly used in virtual machines to enable access to external networks, such as the internet, without requiring direct exposure of the virtual machine (VM) to the host network. It acts as a bridge between the VM and the host, mapping internal IP addresses of the VM to the host's external IP address and port.

Select OK, then with the virtual machine that we just configured selected, click the start button. The virtual machine will begin the boot process. After booting You will see a login screen. The default credentials are: 

Username: `kali`
Password: `kali`

You can maximize the window and now are you all set up with your own Kali Virtual Machine!

Once you are done using the machine, you can power it down just like a normal machine by either selecting the machine tab or selecting the X at the top right of the window (pictured below). 


![Close Menu](img/vb06.png)

You have several options. The top option will close the VM, but preserve the state so that it comes up exactly the way you left it. Send shutdown signal and powering of the machine will fully shutdown the VM like a physical machine. When powering off the machine, if you have any snapshots saved it will give you the option to revert back to a snapshot with a check box.

## Opening a VM From an iso File

For this example we will download the latest [Ubuntu](https://ubuntu.com/download) image. Follow the link and select "Download Ubuntu Desktop".

Once downloaded, open VirtualBox and click on the "New" icon. 

![New Menu](img/vb06.png)

Name the image, then select the dropdown for "ISO Image" and click "Other". This will bring up a folder menu. Navigate to and select the ubuntu image. This should autopopulate the last 3 OS field in this menu.

![New Menu](img/vb07.png)

Next you can select the second dropdown to specify a user. I will create a user with the credentials: 
username: `ubuntu`
password: `ubuntu`

![New Menu](img/vb08.png)

The third dropdown will allow you to again specify RAM and CPU quantities. I will again select 16382 MB and 16 cores. 

![New Menu](img/vb09.png)

The final drop down allows you to allocate the storage for this virtual machine. I will continue on with the default of 25 GB.

![New Menu](img/vb10.png)

Select finish. It should start booting the new VM immediately. 

Congradulations, you have successfully created a VM from an iso file! 


## Useful Tips Inside the VM

**Escaping with the Mouse:** If your cursor is stuck inside of the VM, you can escape by clicking the "host key". This is usually set to the CRTL button on the right side of the keyboard by deafult. 

**Exit full-screen mode:** input right CRTL+f at the same time.

**Exit scaled mode:** input right CRTL+c at the same time.

**Scale VM to Window:** While the machine is up, click on the "Devices" tab and select "Insert Guest Additions CD Image". Then navigate to the disk drive and execute the appropriate file. For Ubuntu you will need to run:
`sudo apt-get install bzip2`
`cd /media/ubuntu/VBox_GAs_<VBOX_VERSION>`
`sudo ./VBoxLinuxAdditions.run`
