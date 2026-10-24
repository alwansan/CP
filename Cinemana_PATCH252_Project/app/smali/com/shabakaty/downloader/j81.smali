.class public final synthetic Lcom/shabakaty/downloader/j81;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/br3$d;


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;

.field public final synthetic b:Lcom/shabakaty/downloader/br3;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;Lcom/shabakaty/downloader/br3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/j81;->a:Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;

    iput-object p2, p0, Lcom/shabakaty/downloader/j81;->b:Lcom/shabakaty/downloader/br3;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/shabakaty/downloader/j81;->a:Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;

    iget-object v4, v0, Lcom/shabakaty/downloader/j81;->b:Lcom/shabakaty/downloader/br3;

    sget v5, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->o0:I

    const-string v5, "this$0"

    .line 1
    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-wide v5, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->i0:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x3e8

    cmp-long v9, v5, v7

    if-lez v9, :cond_4

    .line 3
    iget-boolean v5, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->j0:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iput-boolean v6, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->j0:Z

    goto :goto_2

    .line 4
    :cond_0
    iget-object v5, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->k0:[J

    iget-object v7, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->l0:[J

    .line 5
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_3

    const/4 v9, 0x0

    :goto_0
    add-int/lit8 v10, v9, 0x1

    .line 6
    aget-wide v11, v5, v9

    cmp-long v13, v1, v11

    if-ltz v13, :cond_1

    aget-wide v11, v7, v9

    cmp-long v13, v1, v11

    if-gtz v13, :cond_1

    move v6, v9

    goto :goto_1

    :cond_1
    if-le v10, v8, :cond_2

    goto :goto_1

    :cond_2
    move v9, v10

    goto :goto_0

    .line 7
    :cond_3
    :goto_1
    iput v6, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->h0:I

    .line 8
    :cond_4
    :goto_2
    iget-object v5, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->k0:[J

    iget v6, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->h0:I

    aget-wide v7, v5, v6

    cmp-long v5, v1, v7

    if-ltz v5, :cond_6

    iget-object v5, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->l0:[J

    aget-wide v7, v5, v6

    cmp-long v9, v1, v7

    if-gez v9, :cond_6

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 9
    aget-wide v11, v5, v6

    .line 10
    new-instance v5, Lcom/shabakaty/downloader/pq2;

    const/16 v16, 0x0

    move-object v10, v5

    invoke-direct/range {v10 .. v16}, Lcom/shabakaty/downloader/pq2;-><init>(JIZLorg/json/JSONObject;Lcom/shabakaty/downloader/hl3;)V

    .line 11
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/br3;->t(Lcom/shabakaty/downloader/pq2;)Lcom/shabakaty/downloader/nb3;

    .line 12
    iget v4, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->h0:I

    iget-object v5, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->k0:[J

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_5

    add-int/2addr v4, v6

    iput v4, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->h0:I

    .line 13
    :cond_5
    iput-boolean v6, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->j0:Z

    .line 14
    :cond_6
    iput-wide v1, v3, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;->i0:J

    return-void
.end method
