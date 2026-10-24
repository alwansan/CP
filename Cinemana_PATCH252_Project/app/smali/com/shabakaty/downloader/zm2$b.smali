.class public final Lcom/shabakaty/downloader/zm2$b;
.super Lcom/shabakaty/downloader/nn4;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zm2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lcom/shabakaty/downloader/dp2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dp2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/nn4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zm2$b;->b:Lcom/shabakaty/downloader/dp2;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zm2$a;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public g(ILcom/shabakaty/downloader/nn4$b;Z)Lcom/shabakaty/downloader/nn4$b;
    .locals 11

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz p3, :cond_1

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/zm2$a;->e:Ljava/lang/Object;

    :cond_1
    move-object v3, p1

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    sget-object v9, Lcom/shabakaty/downloader/k4;->g:Lcom/shabakaty/downloader/k4;

    const/4 v10, 0x1

    move-object v1, p2

    .line 3
    invoke-virtual/range {v1 .. v10}, Lcom/shabakaty/downloader/nn4$b;->g(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/shabakaty/downloader/k4;Z)Lcom/shabakaty/downloader/nn4$b;

    return-object p2
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m(I)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/zm2$a;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public o(ILcom/shabakaty/downloader/nn4$c;J)Lcom/shabakaty/downloader/nn4$c;
    .locals 21

    move-object/from16 v15, p2

    move-object/from16 v0, p2

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/nn4$c;->r:Ljava/lang/Object;

    move-object/from16 v13, p0

    iget-object v2, v13, Lcom/shabakaty/downloader/zm2$b;->b:Lcom/shabakaty/downloader/dp2;

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v13, v16

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v0 .. v20}, Lcom/shabakaty/downloader/nn4$c;->d(Ljava/lang/Object;Lcom/shabakaty/downloader/dp2;Ljava/lang/Object;JJJZZLcom/shabakaty/downloader/dp2$f;JJIIJ)Lcom/shabakaty/downloader/nn4$c;

    const/4 v0, 0x1

    move-object/from16 v1, p2

    .line 2
    iput-boolean v0, v1, Lcom/shabakaty/downloader/nn4$c;->l:Z

    return-object v1
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
