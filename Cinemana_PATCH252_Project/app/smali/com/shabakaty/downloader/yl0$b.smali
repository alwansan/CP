.class public final Lcom/shabakaty/downloader/yl0$b;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yl0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:J

.field public c:I

.field public d:[B

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:J

.field public g:J

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/yl0$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/shabakaty/downloader/yl0$b;->a:Landroid/net/Uri;

    .line 3
    iget-wide v0, p1, Lcom/shabakaty/downloader/yl0;->b:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/yl0$b;->b:J

    .line 4
    iget p2, p1, Lcom/shabakaty/downloader/yl0;->c:I

    iput p2, p0, Lcom/shabakaty/downloader/yl0$b;->c:I

    .line 5
    iget-object p2, p1, Lcom/shabakaty/downloader/yl0;->d:[B

    iput-object p2, p0, Lcom/shabakaty/downloader/yl0$b;->d:[B

    .line 6
    iget-object p2, p1, Lcom/shabakaty/downloader/yl0;->e:Ljava/util/Map;

    iput-object p2, p0, Lcom/shabakaty/downloader/yl0$b;->e:Ljava/util/Map;

    .line 7
    iget-wide v0, p1, Lcom/shabakaty/downloader/yl0;->f:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/yl0$b;->f:J

    .line 8
    iget-wide v0, p1, Lcom/shabakaty/downloader/yl0;->g:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/yl0$b;->g:J

    .line 9
    iget-object p2, p1, Lcom/shabakaty/downloader/yl0;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/yl0$b;->h:Ljava/lang/String;

    .line 10
    iget p2, p1, Lcom/shabakaty/downloader/yl0;->i:I

    iput p2, p0, Lcom/shabakaty/downloader/yl0$b;->i:I

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/yl0;->j:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/yl0$b;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/yl0;
    .locals 15

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/yl0$b;->a:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2
    new-instance v14, Lcom/shabakaty/downloader/yl0;

    iget-wide v2, p0, Lcom/shabakaty/downloader/yl0$b;->b:J

    iget v4, p0, Lcom/shabakaty/downloader/yl0$b;->c:I

    iget-object v5, p0, Lcom/shabakaty/downloader/yl0$b;->d:[B

    iget-object v6, p0, Lcom/shabakaty/downloader/yl0$b;->e:Ljava/util/Map;

    iget-wide v7, p0, Lcom/shabakaty/downloader/yl0$b;->f:J

    iget-wide v9, p0, Lcom/shabakaty/downloader/yl0$b;->g:J

    iget-object v11, p0, Lcom/shabakaty/downloader/yl0$b;->h:Ljava/lang/String;

    iget v12, p0, Lcom/shabakaty/downloader/yl0$b;->i:I

    iget-object v13, p0, Lcom/shabakaty/downloader/yl0$b;->j:Ljava/lang/Object;

    move-object v0, v14

    .line 3
    invoke-direct/range {v0 .. v13}, Lcom/shabakaty/downloader/yl0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v14

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The uri must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
