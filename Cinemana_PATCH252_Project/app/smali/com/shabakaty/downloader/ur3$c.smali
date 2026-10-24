.class public Lcom/shabakaty/downloader/ur3$c;
.super Lcom/shabakaty/downloader/ur3;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ur3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final w:Ljava/lang/String;

.field public final x:Lcom/shabakaty/downloader/qm3;

.field public final y:Lcom/shabakaty/downloader/fq1;


# direct methods
.method public constructor <init>(JLcom/shabakaty/downloader/wh1;Ljava/util/List;Lcom/shabakaty/downloader/b04$e;Ljava/util/List;Ljava/lang/String;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/shabakaty/downloader/wh1;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/nk;",
            ">;",
            "Lcom/shabakaty/downloader/b04$e;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/oq0;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p5

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/ur3;-><init>(JLcom/shabakaty/downloader/wh1;Ljava/util/List;Lcom/shabakaty/downloader/b04;Ljava/util/List;Lcom/shabakaty/downloader/ur3$a;)V

    const/4 v0, 0x0

    move-object v1, p4

    .line 2
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/nk;

    iget-object v0, v0, Lcom/shabakaty/downloader/nk;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 3
    iget-wide v0, v9, Lcom/shabakaty/downloader/b04$e;->e:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    move-object v2, v4

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/qm3;

    const/4 v3, 0x0

    iget-wide v5, v9, Lcom/shabakaty/downloader/b04$e;->d:J

    move-object p1, v2

    move-object p2, v3

    move-wide p3, v5

    move-wide p5, v0

    invoke-direct/range {p1 .. p6}, Lcom/shabakaty/downloader/qm3;-><init>(Ljava/lang/String;JJ)V

    .line 5
    :goto_0
    iput-object v2, v8, Lcom/shabakaty/downloader/ur3$c;->x:Lcom/shabakaty/downloader/qm3;

    move-object/from16 v0, p7

    .line 6
    iput-object v0, v8, Lcom/shabakaty/downloader/ur3$c;->w:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v4, Lcom/shabakaty/downloader/fq1;

    new-instance v0, Lcom/shabakaty/downloader/qm3;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object p1, v0

    move-object p2, v1

    move-wide p3, v2

    move-wide/from16 p5, p8

    invoke-direct/range {p1 .. p6}, Lcom/shabakaty/downloader/qm3;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/fq1;-><init>(Lcom/shabakaty/downloader/qm3;)V

    :goto_1
    iput-object v4, v8, Lcom/shabakaty/downloader/ur3$c;->y:Lcom/shabakaty/downloader/fq1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$c;->w:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/dl0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$c;->y:Lcom/shabakaty/downloader/fq1;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/qm3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$c;->x:Lcom/shabakaty/downloader/qm3;

    return-object v0
.end method
