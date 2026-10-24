.class public final Lcom/shabakaty/downloader/q05;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/q05$d;,
        Lcom/shabakaty/downloader/q05$c;,
        Lcom/shabakaty/downloader/q05$b;,
        Lcom/shabakaty/downloader/q05$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/nd1;

.field public final b:Lcom/shabakaty/downloader/q05$a;

.field public final c:Lcom/shabakaty/downloader/q05$d;

.field public d:Z

.field public e:Landroid/view/Surface;

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/nd1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nd1;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/q05;->a:Lcom/shabakaty/downloader/nd1;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    const-string v1, "display"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_0

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/q05$c;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/q05$c;-><init>(Landroid/hardware/display/DisplayManager;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    const-string v1, "window"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_1

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/q05$b;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/q05$b;-><init>(Landroid/view/WindowManager;)V

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 9
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/shabakaty/downloader/q05;->b:Lcom/shabakaty/downloader/q05$a;

    if-eqz v2, :cond_3

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/q05$d;->v:Lcom/shabakaty/downloader/q05$d;

    .line 11
    :cond_3
    iput-object v0, p0, Lcom/shabakaty/downloader/q05;->c:Lcom/shabakaty/downloader/q05$d;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    iput-wide v0, p0, Lcom/shabakaty/downloader/q05;->j:J

    .line 13
    iput-wide v0, p0, Lcom/shabakaty/downloader/q05;->k:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 14
    iput p1, p0, Lcom/shabakaty/downloader/q05;->f:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    iput p1, p0, Lcom/shabakaty/downloader/q05;->i:F

    return-void
.end method

.method public static c(Landroid/view/Surface;F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/Surface;->setFrameRate(FI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Failed to call Surface.setFrameRate"

    .line 2
    invoke-static {p1, v0, p0}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/q05;->e:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/shabakaty/downloader/q05;->h:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput v2, p0, Lcom/shabakaty/downloader/q05;->h:F

    .line 3
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/q05;->c(Landroid/view/Surface;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/shabakaty/downloader/q05;->l:J

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/q05;->o:J

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/q05;->m:J

    return-void
.end method

.method public final d()V
    .locals 10

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lcom/shabakaty/downloader/q05;->e:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/q05;->a:Lcom/shabakaty/downloader/nd1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nd1;->a()Z

    move-result v0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/downloader/q05;->a:Lcom/shabakaty/downloader/nd1;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nd1;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/nd1;->a:Lcom/shabakaty/downloader/nd1$a;

    .line 5
    iget-wide v5, v0, Lcom/shabakaty/downloader/nd1$a;->e:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v0, Lcom/shabakaty/downloader/nd1$a;->f:J

    div-long/2addr v7, v5

    :goto_0
    long-to-double v5, v7

    div-double/2addr v3, v5

    double-to-float v0, v3

    goto :goto_1

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    .line 6
    :cond_3
    iget v0, p0, Lcom/shabakaty/downloader/q05;->f:F

    .line 7
    :goto_1
    iget v3, p0, Lcom/shabakaty/downloader/q05;->g:F

    cmpl-float v4, v0, v3

    if-nez v4, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpl-float v6, v0, v2

    if-eqz v6, :cond_9

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_9

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/q05;->a:Lcom/shabakaty/downloader/nd1;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nd1;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/shabakaty/downloader/q05;->a:Lcom/shabakaty/downloader/nd1;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nd1;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, v1, Lcom/shabakaty/downloader/nd1;->a:Lcom/shabakaty/downloader/nd1$a;

    .line 11
    iget-wide v1, v1, Lcom/shabakaty/downloader/nd1$a;->f:J

    goto :goto_2

    :cond_5
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-wide v6, 0x12a05f200L

    cmp-long v3, v1, v6

    if-ltz v3, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    const v1, 0x3ca3d70a    # 0.02f

    goto :goto_4

    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    :goto_4
    iget v2, p0, Lcom/shabakaty/downloader/q05;->g:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_a

    goto :goto_5

    .line 13
    :cond_a
    iget-object v2, p0, Lcom/shabakaty/downloader/q05;->a:Lcom/shabakaty/downloader/nd1;

    .line 14
    iget v2, v2, Lcom/shabakaty/downloader/nd1;->e:I

    if-lt v2, v1, :cond_8

    :goto_5
    if-eqz v5, :cond_b

    .line 15
    iput v0, p0, Lcom/shabakaty/downloader/q05;->g:F

    .line 16
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/q05;->e(Z)V

    :cond_b
    :goto_6
    return-void
.end method

.method public final e(Z)V
    .locals 4

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/shabakaty/downloader/q05;->e:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    iget-boolean v2, p0, Lcom/shabakaty/downloader/q05;->d:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/shabakaty/downloader/q05;->g:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/q05;->i:F

    mul-float v1, v1, v2

    :cond_1
    if-nez p1, :cond_2

    .line 4
    iget p1, p0, Lcom/shabakaty/downloader/q05;->h:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    iput v1, p0, Lcom/shabakaty/downloader/q05;->h:F

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/q05;->c(Landroid/view/Surface;F)V

    :cond_3
    :goto_0
    return-void
.end method
