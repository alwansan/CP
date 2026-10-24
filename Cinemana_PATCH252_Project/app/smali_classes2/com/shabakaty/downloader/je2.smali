.class public final Lcom/shabakaty/downloader/je2;
.super Ljava/lang/Object;
.source "KotlinJvmBinarySourceElement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/as0;


# instance fields
.field public final b:Lcom/shabakaty/downloader/he2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/he2;Lcom/shabakaty/downloader/f02;ZLcom/shabakaty/downloader/zr0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/he2;",
            "Lcom/shabakaty/downloader/f02<",
            "Lcom/shabakaty/downloader/ob2;",
            ">;Z",
            "Lcom/shabakaty/downloader/zr0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/je2;->b:Lcom/shabakaty/downloader/he2;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/t94;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t94;->a:Lcom/shabakaty/downloader/t94;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    const-string v0, "Class \'"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/je2;->b:Lcom/shabakaty/downloader/he2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/he2;->f()Lcom/shabakaty/downloader/v20;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/shabakaty/downloader/je2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/je2;->b:Lcom/shabakaty/downloader/he2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
