.class public final Lcom/shabakaty/downloader/dp2$c;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/dp2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public A:F

.field public a:Ljava/lang/String;

.field public b:Landroid/net/Uri;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Landroid/net/Uri;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/UUID;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:[B

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ud4;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/lang/String;

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/dp2$h;",
            ">;"
        }
    .end annotation
.end field

.field public s:Landroid/net/Uri;

.field public t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;

.field public v:Lcom/shabakaty/downloader/hp2;

.field public w:J

.field public x:J

.field public y:J

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/dp2$c;->n:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/dp2$c;->i:Ljava/util/Map;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/dp2$c;->p:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/dp2$c;->r:Ljava/util/List;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lcom/shabakaty/downloader/dp2$c;->w:J

    .line 7
    iput-wide v0, p0, Lcom/shabakaty/downloader/dp2$c;->x:J

    .line 8
    iput-wide v0, p0, Lcom/shabakaty/downloader/dp2$c;->y:J

    const v0, -0x800001

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/dp2$c;->z:F

    .line 10
    iput v0, p0, Lcom/shabakaty/downloader/dp2$c;->A:F

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/dp2;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dp2$c;->h:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/shabakaty/downloader/dp2$c;->j:Ljava/util/UUID;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v3, v0, Lcom/shabakaty/downloader/dp2$c;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_4

    .line 3
    new-instance v12, Lcom/shabakaty/downloader/dp2$g;

    iget-object v4, v0, Lcom/shabakaty/downloader/dp2$c;->c:Ljava/lang/String;

    .line 4
    iget-object v14, v0, Lcom/shabakaty/downloader/dp2$c;->j:Ljava/util/UUID;

    if-eqz v14, :cond_2

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/dp2$e;

    iget-object v15, v0, Lcom/shabakaty/downloader/dp2$c;->h:Landroid/net/Uri;

    iget-object v5, v0, Lcom/shabakaty/downloader/dp2$c;->i:Ljava/util/Map;

    iget-boolean v6, v0, Lcom/shabakaty/downloader/dp2$c;->k:Z

    iget-boolean v7, v0, Lcom/shabakaty/downloader/dp2$c;->m:Z

    iget-boolean v8, v0, Lcom/shabakaty/downloader/dp2$c;->l:Z

    iget-object v9, v0, Lcom/shabakaty/downloader/dp2$c;->n:Ljava/util/List;

    iget-object v10, v0, Lcom/shabakaty/downloader/dp2$c;->o:[B

    const/16 v22, 0x0

    move-object v13, v2

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v13 .. v22}, Lcom/shabakaty/downloader/dp2$e;-><init>(Ljava/util/UUID;Landroid/net/Uri;Ljava/util/Map;ZZZLjava/util/List;[BLcom/shabakaty/downloader/dp2$a;)V

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 6
    :goto_2
    iget-object v2, v0, Lcom/shabakaty/downloader/dp2$c;->s:Landroid/net/Uri;

    if-eqz v2, :cond_3

    new-instance v6, Lcom/shabakaty/downloader/dp2$b;

    iget-object v7, v0, Lcom/shabakaty/downloader/dp2$c;->t:Ljava/lang/Object;

    invoke-direct {v6, v2, v7, v1}, Lcom/shabakaty/downloader/dp2$b;-><init>(Landroid/net/Uri;Ljava/lang/Object;Lcom/shabakaty/downloader/dp2$a;)V

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    iget-object v7, v0, Lcom/shabakaty/downloader/dp2$c;->p:Ljava/util/List;

    iget-object v8, v0, Lcom/shabakaty/downloader/dp2$c;->q:Ljava/lang/String;

    iget-object v9, v0, Lcom/shabakaty/downloader/dp2$c;->r:Ljava/util/List;

    iget-object v10, v0, Lcom/shabakaty/downloader/dp2$c;->u:Ljava/lang/Object;

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/shabakaty/downloader/dp2$g;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/shabakaty/downloader/dp2$e;Lcom/shabakaty/downloader/dp2$b;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/shabakaty/downloader/dp2$a;)V

    move-object/from16 v16, v12

    goto :goto_4

    :cond_4
    move-object/from16 v16, v1

    .line 7
    :goto_4
    new-instance v1, Lcom/shabakaty/downloader/dp2;

    .line 8
    iget-object v2, v0, Lcom/shabakaty/downloader/dp2$c;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    const-string v2, ""

    :goto_5
    move-object v14, v2

    new-instance v15, Lcom/shabakaty/downloader/dp2$d;

    iget-wide v3, v0, Lcom/shabakaty/downloader/dp2$c;->d:J

    const-wide/high16 v5, -0x8000000000000000L

    iget-boolean v7, v0, Lcom/shabakaty/downloader/dp2$c;->e:Z

    iget-boolean v8, v0, Lcom/shabakaty/downloader/dp2$c;->f:Z

    iget-boolean v9, v0, Lcom/shabakaty/downloader/dp2$c;->g:Z

    const/4 v10, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v10}, Lcom/shabakaty/downloader/dp2$d;-><init>(JJZZZLcom/shabakaty/downloader/dp2$a;)V

    new-instance v2, Lcom/shabakaty/downloader/dp2$f;

    iget-wide v3, v0, Lcom/shabakaty/downloader/dp2$c;->w:J

    iget-wide v5, v0, Lcom/shabakaty/downloader/dp2$c;->x:J

    iget-wide v7, v0, Lcom/shabakaty/downloader/dp2$c;->y:J

    iget v9, v0, Lcom/shabakaty/downloader/dp2$c;->z:F

    iget v10, v0, Lcom/shabakaty/downloader/dp2$c;->A:F

    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move-wide/from16 v22, v7

    move/from16 v24, v9

    move/from16 v25, v10

    invoke-direct/range {v17 .. v25}, Lcom/shabakaty/downloader/dp2$f;-><init>(JJJFF)V

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/dp2$c;->v:Lcom/shabakaty/downloader/hp2;

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    sget-object v3, Lcom/shabakaty/downloader/hp2;->D:Lcom/shabakaty/downloader/hp2;

    :goto_6
    move-object/from16 v18, v3

    const/16 v19, 0x0

    move-object v13, v1

    move-object/from16 v17, v2

    invoke-direct/range {v13 .. v19}, Lcom/shabakaty/downloader/dp2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/dp2$d;Lcom/shabakaty/downloader/dp2$g;Lcom/shabakaty/downloader/dp2$f;Lcom/shabakaty/downloader/hp2;Lcom/shabakaty/downloader/dp2$a;)V

    return-object v1
.end method

.method public b(Ljava/util/List;)Lcom/shabakaty/downloader/dp2$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ud4;",
            ">;)",
            "Lcom/shabakaty/downloader/dp2$c;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/dp2$c;->p:Ljava/util/List;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/shabakaty/downloader/dp2$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/dp2$h;",
            ">;)",
            "Lcom/shabakaty/downloader/dp2$c;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/dp2$c;->r:Ljava/util/List;

    return-object p0
.end method
