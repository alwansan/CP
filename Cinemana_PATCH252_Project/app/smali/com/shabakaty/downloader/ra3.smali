.class public final Lcom/shabakaty/downloader/ra3;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lcom/shabakaty/downloader/ij2$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ra3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ij2$e;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/shabakaty/downloader/yl0;

.field public final c:I

.field public final d:Lcom/shabakaty/downloader/uc4;

.field public final e:Lcom/shabakaty/downloader/ra3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ra3$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vl0;Landroid/net/Uri;ILcom/shabakaty/downloader/ra3$a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vl0;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/shabakaty/downloader/ra3$a<",
            "+TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v5, 0x1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    const-wide/16 v10, -0x1

    const/4 v13, 0x1

    if-eqz p2, :cond_0

    .line 2
    new-instance v15, Lcom/shabakaty/downloader/yl0;

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v1, v15

    move-object/from16 v2, p2

    .line 3
    invoke-direct/range {v1 .. v14}, Lcom/shabakaty/downloader/yl0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/uc4;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/uc4;-><init>(Lcom/shabakaty/downloader/vl0;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 6
    iput-object v15, v0, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    move/from16 v1, p3

    .line 7
    iput v1, v0, Lcom/shabakaty/downloader/ra3;->c:I

    move-object/from16 v1, p4

    .line 8
    iput-object v1, v0, Lcom/shabakaty/downloader/ra3;->e:Lcom/shabakaty/downloader/ra3$a;

    .line 9
    invoke-static {}, Lcom/shabakaty/downloader/hj2;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/shabakaty/downloader/ra3;->a:J

    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The uri must be set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Lcom/shabakaty/downloader/uc4;->b:J

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/xl0;

    iget-object v1, p0, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    iget-object v2, p0, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/xl0;-><init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;)V

    .line 4
    :try_start_0
    iget-boolean v1, v0, Lcom/shabakaty/downloader/xl0;->u:Z

    if-nez v1, :cond_0

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/xl0;->r:Lcom/shabakaty/downloader/vl0;

    iget-object v2, v0, Lcom/shabakaty/downloader/xl0;->s:Lcom/shabakaty/downloader/yl0;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/vl0;->a(Lcom/shabakaty/downloader/yl0;)J

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/shabakaty/downloader/xl0;->u:Z

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/uc4;->r()Landroid/net/Uri;

    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/ra3;->e:Lcom/shabakaty/downloader/ra3$a;

    invoke-interface {v2, v1, v0}, Lcom/shabakaty/downloader/ra3$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/ra3;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    .line 11
    :try_start_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xl0;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 12
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    .line 13
    :try_start_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xl0;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 14
    :catch_1
    throw v1
.end method

.method public final b()V
    .locals 0

    return-void
.end method
