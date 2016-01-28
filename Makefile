.PHONY: apply destroy ansible

apply:
	cd terraform && terraform apply

destroy:
	cd terraform && terraform destroy

ansible:
	cd ansible && \
	ansible-galaxy install -r requirements.yml --force && \
	ansible-playbook -i terraform-inventory.py -u ubuntu site.yml

