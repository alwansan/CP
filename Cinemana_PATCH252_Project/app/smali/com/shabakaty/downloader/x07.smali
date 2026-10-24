.class public final Lcom/shabakaty/downloader/x07;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/k17;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/k17<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/q07;

.field public final b:Lcom/shabakaty/downloader/s37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/s37<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lcom/shabakaty/downloader/it6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/it6<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/s37;Lcom/shabakaty/downloader/it6;Lcom/shabakaty/downloader/q07;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/s37<",
            "**>;",
            "Lcom/shabakaty/downloader/it6<",
            "*>;",
            "Lcom/shabakaty/downloader/q07;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/x07;->b:Lcom/shabakaty/downloader/s37;

    .line 1
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/it6;->c(Lcom/shabakaty/downloader/q07;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/downloader/x07;->c:Z

    iput-object p2, p0, Lcom/shabakaty/downloader/x07;->d:Lcom/shabakaty/downloader/it6;

    iput-object p3, p0, Lcom/shabakaty/downloader/x07;->a:Lcom/shabakaty/downloader/q07;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/x07;->d:Lcom/shabakaty/downloader/it6;

    .line 1
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/it6;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/xt6;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/x07;->b:Lcom/shabakaty/downloader/s37;

    .line 1
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/s37;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/shabakaty/downloader/x07;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x07;->d:Lcom/shabakaty/downloader/it6;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/it6;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/xt6;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/x07;->b:Lcom/shabakaty/downloader/s37;

    .line 1
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/s37;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s37;->b(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/shabakaty/downloader/x07;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x07;->d:Lcom/shabakaty/downloader/it6;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/it6;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/xt6;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/x07;->b:Lcom/shabakaty/downloader/s37;

    .line 1
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/s37;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/x07;->d:Lcom/shabakaty/downloader/it6;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/it6;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/x07;->a:Lcom/shabakaty/downloader/q07;

    .line 1
    invoke-interface {v0}, Lcom/shabakaty/downloader/q07;->e()Lcom/shabakaty/downloader/vp6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/lu6;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lu6;->h()Lcom/shabakaty/downloader/uu6;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;Lcom/shabakaty/downloader/rs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/rs6;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/shabakaty/downloader/x07;->d:Lcom/shabakaty/downloader/it6;

    .line 1
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/it6;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/xt6;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/x07;->b:Lcom/shabakaty/downloader/s37;

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/p17;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/s37;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/s37;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/s37;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/s37;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lcom/shabakaty/downloader/x07;->c:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/x07;->d:Lcom/shabakaty/downloader/it6;

    .line 7
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/it6;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/xt6;

    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/x07;->b:Lcom/shabakaty/downloader/s37;

    .line 1
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/s37;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/x07;->b:Lcom/shabakaty/downloader/s37;

    .line 2
    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/s37;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/x07;->c:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/x07;->d:Lcom/shabakaty/downloader/it6;

    .line 4
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/it6;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/xt6;

    iget-object p1, p0, Lcom/shabakaty/downloader/x07;->d:Lcom/shabakaty/downloader/it6;

    .line 5
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/it6;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/xt6;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final i(Ljava/lang/Object;[BIILcom/shabakaty/downloader/cq6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/shabakaty/downloader/cq6;",
            ")V"
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/uu6;

    iget-object p3, p2, Lcom/shabakaty/downloader/uu6;->zzc:Lcom/shabakaty/downloader/t37;

    sget-object p4, Lcom/shabakaty/downloader/t37;->f:Lcom/shabakaty/downloader/t37;

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/t37;->b()Lcom/shabakaty/downloader/t37;

    move-result-object p3

    .line 3
    iput-object p3, p2, Lcom/shabakaty/downloader/uu6;->zzc:Lcom/shabakaty/downloader/t37;

    .line 4
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/ou6;

    const/4 p1, 0x0

    .line 5
    throw p1
.end method
