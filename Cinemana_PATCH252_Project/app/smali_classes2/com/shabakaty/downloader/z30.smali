.class public final Lcom/shabakaty/downloader/z30;
.super Lcom/shabakaty/downloader/dq1;
.source "CloneableClassScope.kt"


# static fields
.field public static final e:Lcom/shabakaty/downloader/z30;

.field public static final f:Lcom/shabakaty/downloader/hw2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "clone"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/z30;->f:Lcom/shabakaty/downloader/hw2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/q20;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/dq1;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/q20;)V

    return-void
.end method


# virtual methods
.method public h()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/xn1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq1;->b:Lcom/shabakaty/downloader/q20;

    .line 2
    sget v1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    sget-object v2, Lcom/shabakaty/downloader/z30;->f:Lcom/shabakaty/downloader/hw2;

    sget-object v3, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    sget-object v4, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/u64;->d1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/u64;

    move-result-object v0

    const/4 v6, 0x0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dq1;->b:Lcom/shabakaty/downloader/q20;

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/q20;->R0()Lcom/shabakaty/downloader/ao3;

    move-result-object v7

    sget-object v9, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/dq1;->b:Lcom/shabakaty/downloader/q20;

    .line 6
    invoke-static {v1}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zd2;->f()Lcom/shabakaty/downloader/b74;

    move-result-object v10

    .line 7
    sget-object v11, Lcom/shabakaty/downloader/eu2;->t:Lcom/shabakaty/downloader/eu2;

    sget-object v12, Lcom/shabakaty/downloader/lr0;->c:Lcom/shabakaty/downloader/mr0;

    move-object v5, v0

    move-object v8, v9

    .line 8
    invoke-virtual/range {v5 .. v12}, Lcom/shabakaty/downloader/u64;->f1(Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/u64;

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
