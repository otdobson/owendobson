### Notebook

This page is where my Academic Notebook is.

### Table of Contents

### Projects
1. [FBLA Business Ethics Project 23/24](#business_ethics_project_2324)

### Business_Ethics_Project_23/24

Objective

High School Scenario
"Jace is a software manager for Synergy Consulting, a company that specializes in information technology services and consulting. His primary responsibility at the company is integrating new programs and applications into Synergy’s processes to increase efficiency company-wide.
Synergy is always looking for new ways to innovate, and recent advances in generative artificial intelligence have motivated them to incorporate this technology into their processes. The company decided to modernize and streamline its customer service operations with an advanced chatbot called ANNETTE (Artificial Neural Network for Telecommunications Engagement). ANNETTE possesses highly sophisticated comprehension and language skills, allowing it to have complex conversations with customers.
Jace is responsible for overseeing ANNETTE’s interactions with Synergy’s clients and adjusting the chatbot’s behavioral procedures accordingly. This includes catching any errant responses, providing any missing data or information when needed, and monitoring and modifying ANNETTE’s interpersonal conduct when communicating with customers.
As the chatbot begins its role as a customer service representative, things appear to be going well. Customers have loved their interactions with ANNETTE. To make ANNETTE as “human” as possible, the chatbot is programmed to make informal conversation, talk in a casual tone of voice, and even display emotions. This programming has allowed ANNETTE and customers to form personal connections, leading to improved customer relations overall at Synergy Consulting.
However, Jace recognizes potential ethical issues with designing a charismatic chatbot. He worries that customers forming a close connection to ANNETTE will lead to a false sense of support and trust. After all, no matter how genuine ANNETTE appears, it cannot feel or demonstrate real emotions and is simply responding to prompts based on collected data. If Synergy’s clients become trusting of or vulnerable towards ANNETTE, this could lead to them divulging sensitive personal or professional information and being emotionally manipulated.
Jace raises his concerns to his department manager. He recommends modifying ANNETTE’s behavior to be much more impersonal and rigid with customers, to decrease the risk of customers being manipulated or deceived. However, Jace’s manager doesn’t seem to share his concerns. They remind Jace that ANNETTE’s personable nature is what makes it such an effective customer service representative and dialing that element back would defeat the purpose of incorporating chatbots into their business processes. Besides, they argue, even human customer service representatives run the risk of developing unhealthy personal connections with customers. Jace’s manager urges him to keep ANNETTE’s engaging personality and even floats the idea of expanding ANNETTE’s responsibilities to other roles and departments.
Next week, Jace is slated to meet with the top executives at Synergy Consulting and provide recommendations for the future of AI use at the company. What should Jace suggest to his company’s leadership? Should he recommend reprogramming ANNETTE to be more formal and transactional? Or should he recommend continuing with ANNETTE’s design as-is, knowing this may lead to ANNETTE—or other chatbots—receiving an expanded role at the company?"


Instructions: [Manual for this project](/Business_Ethics_23_24.pdf)

Materials 

3 Page Report Summary with work cited and cover page. MLA Format Single-spaced report, work cited double.
A presentation highlighting your results to present at the RLC.
Objective Test on business ethics (Administered by FBLA School Advisor)


My take on the project:


Interviewed three people:

Jordan Smith - Founder at Ocean Busters
Richard Corodaro - Harrisburg Area Community College Business Teacher
Edward Drikorn - Owner of Studio 32 Johnstown

Late scheduled:
I scheduled these interviews too late for the RLC date, due to the the factor of them being busy. 

John Ruane Presdient of Giant (TBA)

 I interviewed all of them on general questions, business ethics questions, and their thoughts on AI.



 My summary:

 Completed summary link [Business Ethics Summary](/Owen_Dobson_Business_Ethics_Summary.pdf)
 Objective test: took December 7th. Easy to the factor of the interviews. Scored at least 95%.
 Presentation. TBA Due 12/18/2023 when I present. 




12/18/2023 Did my RLC presentation. Went extremely well and moved on to the SLC due to there only being two people. Don't know my place yet due to technical errors but yeah. 
[My FBLA Business Ethics Slideshow 23/24](/FBLA_Business_Ethics_2023.pptm)

### Infrastruture_Redesign_Project

Preface

In an age defined by digital interconnectedness and cloud-based computing, the management of data across multiple platforms has become increasingly complex. As individuals and organizations embrace the convenience and scalability of cloud storage solutions, they encounter new challenges related to data synchronization, backup, and accessibility. The proliferation of diverse cloud services, each with its own interface and functionality, further complicates the task of effectively managing digital assets.

Amidst this landscape, the need for a unified approach to cloud storage management has never been more apparent. This project aims to address this need by exploring the integration of various cloud services within the framework of a desktop environment. By leveraging the capabilities of modern desktop infrastructure, individuals and organizations can streamline data workflows, enhance collaboration, and ensure data integrity across multiple cloud platforms.

Motivation

The motivation behind this project stems from a recognition of the growing importance of cloud storage in modern computing environments. As an avid user of cloud services myself, I have experienced firsthand the challenges associated with managing data across disparate platforms. Whether it's coordinating files between Google Drive, Dropbox, or OneDrive, or ensuring data security and compliance in a multi-cloud environment, the complexities of cloud storage management are ever-present.

Furthermore, as a proponent of open-source software and self-hosted solutions, I am passionate about empowering individuals and organizations to take control of their digital infrastructure. By harnessing the power of desktop computing, users can achieve greater autonomy, flexibility, and security in their data management practices. This project seeks to explore the possibilities afforded by desktop-based cloud storage management solutions and provide practical insights for implementing such systems.

Objectives

The primary objectives of this project are as follows:

Investigate existing cloud storage management solutions and their integration with desktop environments.
Evaluate the advantages and limitations of different approaches to cloud storage management.
Develop a comprehensive framework for managing cloud storage within a desktop environment.
Provide practical guidance and recommendations for individuals and organizations seeking to optimize their cloud storage workflows.
Foster a community of collaboration and knowledge-sharing around desktop-based cloud storage management solutions.


Description :: The details

With this project, I plan to locallize and avoid the overwhelming costs of using the cloud. Do to now having enough powerful and x86 hardware I am planning to run proxmox on my desktop machine. My windows host drive or C drive will remain in place. I am installing proxmox on a 512GB SSD, to add my host machine drive into a VM and convert it to a VM drive. Therefore, I can delete/format the host drive (old windows install) and use it for proxmox storage.

My proxmox will be installed on top of ubuntu server (min install), with ubuntu server pro for added fununctionitity and use of the host device/os. To be able to use my windows workstation (the pervious install on the desktop that is now a VM), I will use spice as a display driver and use it to make thin clients on a raspberry pi. That way I can run my desktop from multi locations through the building or the world.

I also plan for the proxmox server to run opensense or pfsense (to devolp a enterprise router system based on open source free software, openstack (to manage inter rescouces).

I can get a ubuntu server pro lisense for free for personal use up to five devices!! thats so cool!

I have a bunch of raspberry pis; the whole ecosystem! Besides the pi 5, I havent had a change to obtain that yet.
Outline of servers in this setup:

THE DESKTOP MACHINE: 20 CPUS, 16 GB RAM ASROCK
Main operating system host: Ubuntu Server (min instal) with ubuntu server pro and landscape install (possible), as well as openstack (possible), k3s controller node
Hypervisor: Proxmox VE on top of ubuntu server pro


Thin clients/workstations: raspberry pis (with VM Selection abilties with startup script
k3s clients: Raspberry pis and QNAP-TS230

ACER LAPTOP:
Possibly use as thin client on ubuntu desktop pro or proxmox node on top of ubuntu server pro.
QNAP-TS230:
Get rid of QNAP TLS, and install proxmox on top of ubuntu server pro, to act as a ks node and a proxmox node. Maybe a proxmox backup server.

Applications and services in this setup:

Filecloud Community
Home assistant
Proxmox
k3s
Thin clients access
Openstack
Landscape
Ubuntu Pro
Android VMs
Balena enviorments for IOT devices self deployed/hosted
Quazy Server
Pfsense/opsense
Spice Drivers/display for thin clients
Docker
Wordpress
Rancher
Gitlab
remotely
Cloudflared
Nginx Proxy Manager
Anaaysis Platform
Business Applications
ODOO possiblity
Windows server 2019 (non activiated)

THE TASK:


04/27/2024 17:45-21:33 Installing ubuntu server on desktop machine && Planning + Troubleshooting

04/27/2024 21:38 Ubuntu server pro install done

04/27/2024 21:39 booting into fresh ubuntu server pro!
04/27/2024 21:40 Proxmox install over ssh





UPDATE: 06/1/2024

Proxmox had a fatal error, redoing as a window servers host with type 2 hypervisor (virtualbox or hyperv)

I devolped a amauter radio network through a ASL node that connects to the allstarlink network, it connected to a repeater over the allstar network and bridges analog telephones and FRS channels local as well as IAX cleints for computer applicarions.
It has the ability to use google voice as a SIp trunk b y making/devolping my own "software defined obitalk google voice bridge" allowing ham radios on my network (who auth with certain dial tones) to dial phone numbers. I will also connect thisd system to a N8N automation server for extended funcationallity.


I have my windows machine inside a VM so that I dont have to be at my desk or even at home, as I have a cloudflared service running that exposes my proxmnox virtual env web ui (safely) to my domain through a special tunnel (all w/o firewall configuretion)

I connected my house wiredly through etherner over powerline adpaters from tp link and switch my linksys veolp nodes from router mesh to bridged AP mode. I have three leveks of oraazation my server room/active storage, my workstation for active uses, and my devolpment/alpha desk for hardware building and exploring dioffernt principles. 

I am goinbg to use  my old LGv40 as a portable (pi if you will) by rooting it to have full linux term access to be able to have a travel router and whole infrasturtrure inside my phone without the added beefnit of a pi. I do have a nano travel router however, which I am thinking about getting a USB modem for (it allows you to put a sim card init for use).




