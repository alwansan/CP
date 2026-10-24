.class public Lcom/shabakaty/downloader/c02;
.super Ljava/lang/Object;
.source "ImplicitClassReceiver.kt"

# interfaces
.implements Lcom/shabakaty/downloader/co3;
.implements Lcom/shabakaty/downloader/wm4;


# instance fields
.field public final a:Lcom/shabakaty/downloader/q20;

.field public final b:Lcom/shabakaty/downloader/q20;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/c02;)V
    .locals 0

    const-string p2, "classDescriptor"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/c02;->a:Lcom/shabakaty/downloader/q20;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/c02;->b:Lcom/shabakaty/downloader/q20;

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/qe2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c02;->a:Lcom/shabakaty/downloader/q20;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    const-string v1, "classDescriptor.defaultType"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c02;->a:Lcom/shabakaty/downloader/q20;

    instance-of v1, p1, Lcom/shabakaty/downloader/c02;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/c02;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/shabakaty/downloader/c02;->a:Lcom/shabakaty/downloader/q20;

    :goto_1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c02;->a:Lcom/shabakaty/downloader/q20;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Class{"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/c02;->a:Lcom/shabakaty/downloader/q20;

    invoke-interface {v1}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v1

    const-string v2, "classDescriptor.defaultType"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/shabakaty/downloader/q20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c02;->a:Lcom/shabakaty/downloader/q20;

    return-object v0
.end method
