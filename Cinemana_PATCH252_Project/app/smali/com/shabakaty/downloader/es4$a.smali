.class public Lcom/shabakaty/downloader/es4$a;
.super Lcom/shabakaty/downloader/wr4;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/es4;->a(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/wr4<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Lcom/shabakaty/downloader/es4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/es4;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/es4$a;->b:Lcom/shabakaty/downloader/es4;

    iput-object p2, p0, Lcom/shabakaty/downloader/es4$a;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/shabakaty/downloader/wr4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ga2;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/es4$a;->b:Lcom/shabakaty/downloader/es4;

    iget-object v0, v0, Lcom/shabakaty/downloader/es4;->s:Lcom/shabakaty/downloader/wr4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wr4;->a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/es4$a;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ja2;

    const-string v1, "Expected a "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/es4$a;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ja2;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pa2;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/es4$a;->b:Lcom/shabakaty/downloader/es4;

    iget-object v0, v0, Lcom/shabakaty/downloader/es4;->s:Lcom/shabakaty/downloader/wr4;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/wr4;->b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V

    return-void
.end method
