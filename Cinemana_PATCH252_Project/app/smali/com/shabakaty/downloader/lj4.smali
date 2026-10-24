.class public final synthetic Lcom/shabakaty/downloader/lj4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/od;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/nj4;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/nj4;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/lj4;->a:Lcom/shabakaty/downloader/nj4;

    iput-object p2, p0, Lcom/shabakaty/downloader/lj4;->b:Ljava/util/List;

    iput-wide p3, p0, Lcom/shabakaty/downloader/lj4;->c:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/lj4;->a:Lcom/shabakaty/downloader/nj4;

    iget-object v1, p0, Lcom/shabakaty/downloader/lj4;->b:Ljava/util/List;

    iget-wide v2, p0, Lcom/shabakaty/downloader/lj4;->c:J

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/shabakaty/downloader/nj4;->t(Lcom/shabakaty/downloader/nj4;Ljava/util/List;JLjava/util/List;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    return-object p1
.end method
