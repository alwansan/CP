.class public final Lcom/shabakaty/downloader/tz4$a;
.super Lcom/shabakaty/downloader/tz4;
.source "ValueParameterDescriptorImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tz4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final C:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/sz4;ILcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;ZZZLcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/rm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rq;",
            "Lcom/shabakaty/downloader/sz4;",
            "I",
            "Lcom/shabakaty/downloader/d9;",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/qe2;",
            "ZZZ",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/s94;",
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/uz4;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p11}, Lcom/shabakaty/downloader/tz4;-><init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/sz4;ILcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;ZZZLcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/s94;)V

    .line 2
    invoke-static {p12}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tz4$a;->C:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public P0(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/hw2;I)Lcom/shabakaty/downloader/sz4;
    .locals 15

    move-object v0, p0

    .line 1
    new-instance v14, Lcom/shabakaty/downloader/tz4$a;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/j8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v5

    const-string v1, "annotations"

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/vz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v7

    const-string v1, "type"

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tz4;->E0()Z

    move-result v8

    .line 3
    iget-boolean v9, v0, Lcom/shabakaty/downloader/tz4;->y:Z

    .line 4
    iget-boolean v10, v0, Lcom/shabakaty/downloader/tz4;->z:Z

    .line 5
    iget-object v11, v0, Lcom/shabakaty/downloader/tz4;->A:Lcom/shabakaty/downloader/qe2;

    .line 6
    sget-object v12, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    .line 7
    new-instance v13, Lcom/shabakaty/downloader/tz4$a$a;

    invoke-direct {v13, p0}, Lcom/shabakaty/downloader/tz4$a$a;-><init>(Lcom/shabakaty/downloader/tz4$a;)V

    const/4 v3, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v6, p2

    .line 8
    invoke-direct/range {v1 .. v13}, Lcom/shabakaty/downloader/tz4$a;-><init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/sz4;ILcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;ZZZLcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/rm1;)V

    return-object v14
.end method
