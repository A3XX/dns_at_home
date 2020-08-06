

## Step 1: Get the Raspberry Pi OS onto microSD card

1. Download Raspberry Pi Imager from [https://www.raspberrypi.org/downloads/](https://www.raspberrypi.org/downloads/)

2. install and launch Raspberry Pi Imager 

![pi1](https://raw.githubusercontent.com/A3XX/dns_at_home/master/img/1.PNG)

3. Click on choose os and select Raspberry Pi OS 32bit

![pi1a](https://raw.githubusercontent.com/A3XX/dns_at_home/master/img/1a.png)

4. Select the micro SD card 

![pi2](https://raw.githubusercontent.com/A3XX/dns_at_home/master/img/2.PNG)

5. Make sure you have slected the correct drive. click Yes

![pi3](https://raw.githubusercontent.com/A3XX/dns_at_home/master/img/3.PNG)

6. Confirm and contiue. 

![pi4](https://raw.githubusercontent.com/A3XX/dns_at_home/master/img/4.PNG)

7. Once completeed disconect the microSD card and reconnect. create a blank **SSH** wihout any extension on the microSD card main directory. No **.txt** only SSH

![pi5](https://raw.githubusercontent.com/A3XX/dns_at_home/master/img/5.PNG)

8. Safely remove the microSD card, put thecard into your Raspberry Pi. 

## Step 2:Connect Raspberry Pi to your Home network
1. Connect Ethernet cable and power adapter, there is no ON/OFF switch it will automatically power on.  

![step2p1](https://raw.githubusercontent.com/A3XX/dns_at_home/master/img/7.PNG)

2. Figure out your RPi's IP address, There are several methods
  - a. pinging the default Raspbian hostname. open command prompt or terminal and type **ping raspberrypi**. You get the IP address. 
  - b. Check your router's DHCP lease page, you will need login/password for the router. 
  - c. Conect your Raspberry Pi to TV via HDMI, attached keyboard, use default username:**pi** and password:**raspberry** and type **ifconfig** and enter
3. Once you have the IP address, Open Putty and enter the IP address and oepn.a prompt will open click yes.login as **pi** and enter password **raspberry**

![step2p1](https://projects-static.raspberrypi.org/projects/raspberry-pi-getting-started/0e07cfe2a142a41e6c97611e94057de6dddde935/en/images/pi-plug-in.gif)




---
layout: default
---

Text can be **bold**, _italic_, or ~~strikethrough~~.

[Link to another page](./another-page.html).

There should be whitespace between paragraphs.

There should be whitespace between paragraphs. We recommend including a README, or a file with information about your project.

## Header 2

> This is a blockquote following a header.
>
> When something is important enough, you do it even if the odds are not in your favor.

### Header 3

```js
// Javascript code with syntax highlighting.
var fun = function lang(l) {
  dateformat.i18n = require('./lang/' + l)
  return true;
}
```

```ruby
# Ruby code with syntax highlighting
GitHubPages::Dependencies.gems.each do |gem, version|
  s.add_dependency(gem, "= #{version}")
end
```

#### Header 4

*   This is an unordered list following a header.
*   This is an unordered list following a header.
*   This is an unordered list following a header.

##### Header 5

1.  This is an ordered list following a header.
2.  This is an ordered list following a header.
3.  This is an ordered list following a header.

###### Header 6

| head1        | head two          | three |
|:-------------|:------------------|:------|
| ok           | good swedish fish | nice  |
| out of stock | good and plenty   | nice  |
| ok           | good `oreos`      | hmm   |
| ok           | good `zoute` drop | yumm  |

### There's a horizontal rule below this.

* * *

### Here is an unordered list:

*   Item foo
*   Item bar
*   Item baz
*   Item zip

### And an ordered list:

1.  Item one
1.  Item two
1.  Item three
1.  Item four

### And a nested list:

- level 1 item
  - level 2 item
  - level 2 item
    - level 3 item
    - level 3 item
- level 1 item
  - level 2 item
  - level 2 item
  - level 2 item
- level 1 item
  - level 2 item
  - level 2 item
- level 1 item

### Small image

![Pi1](https://github.githubassets.com/images/icons/emoji/octocat.png)

### Large image

![Branching](https://guides.github.com/activities/hello-world/branching.png)


### Definition lists can be used with HTML syntax.

<dl>
<dt>Name</dt>
<dd>Godzilla</dd>
<dt>Born</dt>
<dd>1952</dd>
<dt>Birthplace</dt>
<dd>Japan</dd>
<dt>Color</dt>
<dd>Green</dd>
</dl>

```
Long, single-line code blocks should not wrap. They should horizontally scroll if they are too long. This line should be long enough to demonstrate this.
```

```
The final element.
```
