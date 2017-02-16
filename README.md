Ansible version 2.2.1.0
To runplay book move the "jinja2tmp" directory to /
and run # ansible-playbook nginx.yml -i /etc/ansible/hosts

    # cat /etc/ansible/hosts
    [ubuntu14.04]
    <ip-address>
    ..
    ...




password for user is generated using openssl for. example

    # openssl passwd -salt '9AvQmC' -1 'Ikwjd$jk249km'
    here Ikwjd$jk249km  is the password for new user
    
    
    If below error occurs then add "-m raw" in end:-
    Error: ansible requires the stdlib json or simplejson module, neither was found!
    
     ansible all -i hosts -u username  -m shell -a 'df -h' -m raw
