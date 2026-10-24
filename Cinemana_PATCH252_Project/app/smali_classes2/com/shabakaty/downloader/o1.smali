.class public Lcom/shabakaty/downloader/o1;
.super Ljava/lang/Object;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/mr2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/n1$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n1$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/o1;->r:Lcom/shabakaty/downloader/n1$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    const-string v0, "Scope for type parameter "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/o1;->r:Lcom/shabakaty/downloader/n1$b;

    iget-object v1, v1, Lcom/shabakaty/downloader/n1$b;->r:Lcom/shabakaty/downloader/hw2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/o1;->r:Lcom/shabakaty/downloader/n1$b;

    iget-object v1, v1, Lcom/shabakaty/downloader/n1$b;->s:Lcom/shabakaty/downloader/n1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/n1;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/bt4$a;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    return-object v0
.end method
