from django.db import models


class Message(models.Model):
	title = models.CharField('Título', max_length=50)
	message = models.CharField('Mensagem', max_length=155)

	class Meta:
		verbose_name="Mensagem"
		verbose_name_plural="Mensagens"

	def __str__(self):
		return self.title