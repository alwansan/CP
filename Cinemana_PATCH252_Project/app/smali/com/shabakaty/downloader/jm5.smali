.class public final Lcom/shabakaty/downloader/jm5;
.super Lcom/shabakaty/downloader/uz5;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"


# instance fields
.field public final a:Lcom/shabakaty/downloader/zn6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zn6;)V
    .locals 1

    invoke-direct {p0}, Lcom/shabakaty/downloader/uz5;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0}, Lcom/shabakaty/downloader/zn6;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0}, Lcom/shabakaty/downloader/zn6;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0}, Lcom/shabakaty/downloader/zn6;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0}, Lcom/shabakaty/downloader/zn6;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0}, Lcom/shabakaty/downloader/zn6;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/zn6;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/zn6;->s(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/zn6;->t(Landroid/os/Bundle;)V

    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/zn6;->u(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/zn6;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/zn6;->w(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/zn6;->x(Ljava/lang/String;)V

    return-void
.end method

.method public final y(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jm5;->a:Lcom/shabakaty/downloader/zn6;

    .line 1
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/zn6;->y(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
