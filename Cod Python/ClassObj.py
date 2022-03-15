class Aluno:  #self é referente ao objeto dessa classe que foi criado
    def __init__(self, nome, RA, curso, nota):
        self.nome = nome
        self.RA = RA
        self.curso = curso
        self.nota = nota
    #criando métodos(com os parâmetros especificados) a serem acessados posteriormente
    def aprovado(self):
        return self.nota >= 5.0 #pega o valor de nota, acessado pelo método e retorna um bool

    def __str__(self): #quando precisar que o objeto seja uma string, esse método vai ser chamado
        return ("RA: " + str(self.RA) +
                " Nome: " + str(self.nome) +
                " Curso: " + str(self.curso) +
                " Nota: " + str(self.nota))

aluno1 = Aluno(nome="Ana", RA=123456, curso=42, nota=10.0)
#print(aluno1) #aluno1 é chamado por print e precisa ser string, chamando o método relacionado(__str__)
#Criar uma turma que:
# Armazena alunos
# Permite adicionar aluno
# Permite imprimir alunos
# Permite imprimir alunos aprovados
# Permite imprimir alunos reprovados

class Turma:
    def __init__(self):
        self.alunos = []

    def adiciona_aluno(self,aluno):
        self.alunos.append(aluno)

    def imprime_alunos(self):
        for aluno in self.alunos:
            print(aluno)

    def imprime_aprovados(self):
        for aluno in self.alunos:
            if aluno.aprovado():
                print(aluno)

    def imprime_reprovados(self):
        for aluno in self.alunos:
            if not aluno.aprovado():
                print(aluno)

turma = Turma()
ana = Aluno("Ana", 123456, 42, 10.0)
beto = Aluno("Beto", 123457, 42, 8.2)
carlos = Aluno("Carlos", 123458, 42, 4.9)
daniel = Aluno("Daniel", 123459, 42, 0.0)
turma.adiciona_aluno(ana)
turma.adiciona_aluno(beto)
turma.adiciona_aluno(carlos)
turma.adiciona_aluno(daniel)
print("Todos os alunos: ")
turma.imprime_alunos()
print("Alunos aprovados: ")
turma.imprime_aprovados()
print("Alunos reprovados: ")
turma.imprime_reprovados()