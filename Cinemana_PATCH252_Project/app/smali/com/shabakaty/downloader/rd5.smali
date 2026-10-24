.class public Lcom/shabakaty/downloader/rd5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.0"

# interfaces
.implements Lcom/shabakaty/downloader/a73;
.implements Lcom/shabakaty/downloader/td0;


# instance fields
.field public final r:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ye7<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/ye7;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ye7;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/rd5;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/rd5;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/rd5;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/zk4;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic M(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/rd5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ye7;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ye7;->s(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ye7;->k()Z

    move-result v0

    return v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/rd5;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/zk4;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ye7;->r()Z

    return-void
.end method
