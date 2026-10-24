.class public final Lcom/shabakaty/downloader/zo2$b;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zo2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zo2$b;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/zo2$b;->b:I

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/zo2$b;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/shabakaty/downloader/zo2$b;->d:I

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zo2$b;->e:Ljava/util/HashMap;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/shabakaty/downloader/zo2$b;->f:I

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/zo2;
    .locals 4

    const-string v0, "rtpmap"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zo2$b;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/zo2$b;->e:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-static {v0}, Lcom/shabakaty/downloader/zo2$c;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/zo2$c;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/zo2;

    iget-object v2, p0, Lcom/shabakaty/downloader/zo2$b;->e:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/google/common/collect/r;->a(Ljava/util/Map;)Lcom/google/common/collect/r;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/shabakaty/downloader/zo2;-><init>(Lcom/shabakaty/downloader/zo2$b;Lcom/google/common/collect/r;Lcom/shabakaty/downloader/zo2$c;Lcom/shabakaty/downloader/zo2$a;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/pa3; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
