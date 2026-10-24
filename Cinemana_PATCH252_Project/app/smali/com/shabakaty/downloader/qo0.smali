.class public final Lcom/shabakaty/downloader/qo0;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Lcom/shabakaty/downloader/no2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/qo0$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/rb4;

.field public final s:Lcom/shabakaty/downloader/qo0$a;

.field public t:Lcom/shabakaty/downloader/lr3;

.field public u:Lcom/shabakaty/downloader/no2;

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qo0$a;Lcom/shabakaty/downloader/w30;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qo0;->s:Lcom/shabakaty/downloader/qo0$a;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/rb4;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/rb4;-><init>(Lcom/shabakaty/downloader/w30;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/qo0;->v:Z

    return-void
.end method


# virtual methods
.method public c()Lcom/shabakaty/downloader/ad3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qo0;->u:Lcom/shabakaty/downloader/no2;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/no2;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/rb4;->v:Lcom/shabakaty/downloader/ad3;

    :goto_0
    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/ad3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qo0;->u:Lcom/shabakaty/downloader/no2;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/no2;->e(Lcom/shabakaty/downloader/ad3;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/qo0;->u:Lcom/shabakaty/downloader/no2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/no2;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/rb4;->e(Lcom/shabakaty/downloader/ad3;)V

    return-void
.end method

.method public l()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/qo0;->v:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/rb4;->l()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qo0;->u:Lcom/shabakaty/downloader/no2;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/no2;->l()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
