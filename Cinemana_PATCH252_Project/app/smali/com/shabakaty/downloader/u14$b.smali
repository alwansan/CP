.class public Lcom/shabakaty/downloader/u14$b;
.super Lcom/shabakaty/downloader/u14$a;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/u14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/u14$a;-><init>()V

    return-void
.end method

.method public static f(Lcom/shabakaty/downloader/hx4;)Lcom/shabakaty/downloader/u14$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;)",
            "Lcom/shabakaty/downloader/u14$b;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/hx4;->r(Lcom/shabakaty/downloader/u14$d;)Lcom/shabakaty/downloader/u14$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/u14$b;

    invoke-direct {v1}, Lcom/shabakaty/downloader/u14$b;-><init>()V

    .line 3
    invoke-interface {v0, p0, v1}, Lcom/shabakaty/downloader/u14$d;->a(Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/u14$b;)V

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Implementation is missing option unpacker for "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/shabakaty/downloader/qk4;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ps;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/pv$a;->b(Lcom/shabakaty/downloader/ps;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/u14$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u14$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/u14$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate device state callback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u14$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/u14$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate session state callback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lcom/shabakaty/downloader/hp0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u14$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/pv$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Lcom/shabakaty/downloader/u14;
    .locals 8

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/u14;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/shabakaty/downloader/u14$a;->a:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/shabakaty/downloader/u14$a;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/shabakaty/downloader/u14$a;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/shabakaty/downloader/u14$a;->f:Ljava/util/List;

    iget-object v5, p0, Lcom/shabakaty/downloader/u14$a;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pv$a;->d()Lcom/shabakaty/downloader/pv;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/u14;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/pv;)V

    return-object v7
.end method
