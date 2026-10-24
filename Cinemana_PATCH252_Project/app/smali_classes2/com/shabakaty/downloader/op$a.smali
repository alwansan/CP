.class public final Lcom/shabakaty/downloader/op$a;
.super Lcom/shabakaty/downloader/ys3;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final t:Lcom/shabakaty/downloader/eo;

.field public final u:Lcom/shabakaty/downloader/wt0$e;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wt0$e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ys3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/op$a;->u:Lcom/shabakaty/downloader/wt0$e;

    iput-object p2, p0, Lcom/shabakaty/downloader/op$a;->v:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/op$a;->w:Ljava/lang/String;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/wt0$e;->t:Ljava/util/List;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/r94;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/op$a$a;

    invoke-direct {p2, p0, p1, p1}, Lcom/shabakaty/downloader/op$a$a;-><init>(Lcom/shabakaty/downloader/op$a;Lcom/shabakaty/downloader/r94;Lcom/shabakaty/downloader/r94;)V

    .line 4
    invoke-static {p2}, Lcom/shabakaty/downloader/md0;->d(Lcom/shabakaty/downloader/r94;)Lcom/shabakaty/downloader/eo;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/op$a;->t:Lcom/shabakaty/downloader/eo;

    return-void
.end method


# virtual methods
.method public c()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op$a;->w:Ljava/lang/String;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ry4;->y(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method public d()Lcom/shabakaty/downloader/fr2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op$a;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/shabakaty/downloader/fr2;->g:Lcom/shabakaty/downloader/fr2$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/fr2$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f()Lcom/shabakaty/downloader/eo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op$a;->t:Lcom/shabakaty/downloader/eo;

    return-object v0
.end method
