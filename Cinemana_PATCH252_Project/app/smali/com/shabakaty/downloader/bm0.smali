.class public Lcom/shabakaty/downloader/bm0;
.super Ljava/lang/Object;
.source "DatabaseConfiguration.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/zh4$c;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/shabakaty/downloader/vt3$c;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vt3$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wf;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z

.field public final i:I

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Ljava/util/concurrent/Executor;

.field public final l:Z

.field public final m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/downloader/zh4$c;Lcom/shabakaty/downloader/vt3$c;Ljava/util/List;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/zh4$c;",
            "Lcom/shabakaty/downloader/vt3$c;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vt3$b;",
            ">;Z",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wf;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p3

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/bm0;->a:Lcom/shabakaty/downloader/zh4$c;

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/bm0;->b:Landroid/content/Context;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/bm0;->c:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/shabakaty/downloader/bm0;->d:Lcom/shabakaty/downloader/vt3$c;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/bm0;->e:Ljava/util/List;

    move v1, p6

    .line 7
    iput-boolean v1, v0, Lcom/shabakaty/downloader/bm0;->h:Z

    move v1, p7

    .line 8
    iput v1, v0, Lcom/shabakaty/downloader/bm0;->i:I

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/shabakaty/downloader/bm0;->j:Ljava/util/concurrent/Executor;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/shabakaty/downloader/bm0;->k:Ljava/util/concurrent/Executor;

    move v1, p11

    .line 11
    iput-boolean v1, v0, Lcom/shabakaty/downloader/bm0;->l:Z

    move v1, p12

    .line 12
    iput-boolean v1, v0, Lcom/shabakaty/downloader/bm0;->m:Z

    if-nez p17, :cond_0

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p17

    :goto_0
    iput-object v1, v0, Lcom/shabakaty/downloader/bm0;->f:Ljava/util/List;

    if-nez p18, :cond_1

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object/from16 v1, p18

    :goto_1
    iput-object v1, v0, Lcom/shabakaty/downloader/bm0;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/bm0;->m:Z

    if-eqz p1, :cond_1

    return v1

    .line 2
    :cond_1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/bm0;->l:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
