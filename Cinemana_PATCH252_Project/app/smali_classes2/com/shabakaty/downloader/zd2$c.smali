.class public Lcom/shabakaty/downloader/zd2$c;
.super Ljava/lang/Object;
.source "KotlinBuiltIns.java"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/zd2;-><init>(Lcom/shabakaty/downloader/md4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/hw2;",
        "Lcom/shabakaty/downloader/q20;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/zd2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zd2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zd2$c;->r:Lcom/shabakaty/downloader/zd2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hw2;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zd2$c;->r:Lcom/shabakaty/downloader/zd2;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zd2;->l()Lcom/shabakaty/downloader/qu2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/t93;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/mz2;->u:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v0, p1, v2}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    instance-of v1, v0, Lcom/shabakaty/downloader/q20;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/q20;

    return-object v0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Must be a class descriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Built-in class "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    const/16 p1, 0xb

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method
