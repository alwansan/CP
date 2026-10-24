.class public final Lcom/shabakaty/downloader/fz3;
.super Ljava/lang/Object;
.source "SearchUseCases.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/k9;

.field public final b:Lcom/shabakaty/downloader/qm2;

.field public final c:Lcom/shabakaty/downloader/vy3;

.field public final d:Lcom/shabakaty/downloader/n24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k9;Lcom/shabakaty/downloader/qm2;Lcom/shabakaty/downloader/vy3;Lcom/shabakaty/downloader/n24;)V
    .locals 1

    const-string v0, "apiServices"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchDao"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/fz3;->a:Lcom/shabakaty/downloader/k9;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/fz3;->b:Lcom/shabakaty/downloader/qm2;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/fz3;->c:Lcom/shabakaty/downloader/vy3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/fz3;->d:Lcom/shabakaty/downloader/n24;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)Lcom/shabakaty/downloader/f74;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;>;"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "year"

    move-object/from16 v6, p6

    invoke-static {v6, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/fz3;->a:Lcom/shabakaty/downloader/k9;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    move-object v4, p1

    :goto_2
    if-nez p2, :cond_3

    goto :goto_3

    .line 3
    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v7

    if-ne v7, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    move-object v1, v5

    goto :goto_4

    :cond_5
    move-object v1, p2

    :goto_4
    const-string v3, "-1"

    move-object v7, p4

    .line 4
    invoke-static {p4, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v7, v5

    :cond_6
    if-nez p5, :cond_7

    goto :goto_5

    .line 5
    :cond_7
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_8

    move-object v8, v5

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v8, p5

    .line 6
    :goto_6
    iget-object v3, v0, Lcom/shabakaty/downloader/fz3;->d:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/n24;->e()Lcom/shabakaty/downloader/ia3;

    move-result-object v3

    .line 7
    iget-object v10, v3, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    move-object v3, v4

    move-object v4, v1

    move-object v5, p3

    move-object/from16 v6, p6

    move/from16 v9, p7

    .line 8
    invoke-interface/range {v2 .. v10}, Lcom/shabakaty/downloader/k9;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/shabakaty/downloader/fz3;->b:Lcom/shabakaty/downloader/qm2;

    new-instance v3, Lcom/shabakaty/downloader/hx;

    const/4 v4, 0x6

    invoke-direct {v3, v2, v4}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Lcom/shabakaty/downloader/v74;

    invoke-direct {v2, v1, v3}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 11
    invoke-static {v2}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    return-object v1
.end method
