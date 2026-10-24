.class public final synthetic Lcom/shabakaty/downloader/nd3;
.super Lcom/shabakaty/downloader/co1;
.source "PlayerBottomSheetController.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/co1;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/on$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shabakaty/downloader/ed3;

    const/4 v1, 0x0

    const-string v4, "showSubtitleBottomList"

    const-string v5, "showSubtitleBottomList()Lcom/shabakaty/cinemana/utils/bottom_sheet_list/BottomSheetList$Builder;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/co1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ed3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/aj4;

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/md3;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/md3;-><init>(Lcom/shabakaty/downloader/ed3;)V

    .line 6
    iget-object v3, v0, Lcom/shabakaty/downloader/ed3;->c:Lcom/shabakaty/downloader/q10;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/shabakaty/downloader/q10;->o()Z

    move-result v3

    .line 7
    :goto_0
    iget-object v4, v0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    const v5, 0x7f120259

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context.getString(R.string.show_subtitles)"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 8
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/shabakaty/downloader/aj4;-><init>(Lcom/shabakaty/downloader/tm1;ZLjava/lang/String;I)V

    .line 9
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f1202a1

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ed3;->f()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080251

    .line 11
    new-instance v6, Lcom/shabakaty/downloader/rd3;

    invoke-direct {v6, v0}, Lcom/shabakaty/downloader/rd3;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v2, v7

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/ed3;->b(Ljava/util/ArrayList;ILjava/lang/String;ILcom/shabakaty/downloader/rm1;)V

    .line 13
    iget-object v1, v0, Lcom/shabakaty/downloader/ed3;->c:Lcom/shabakaty/downloader/q10;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/q10;->p()Lcom/shabakaty/downloader/hg4;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    iget v1, v1, Lcom/shabakaty/downloader/hg4;->b:I

    .line 15
    iget-object v2, v0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    const-string v1, ""

    :cond_3
    move-object v4, v1

    const v5, 0x7f080176

    .line 16
    new-instance v6, Lcom/shabakaty/downloader/fd3;

    invoke-direct {v6, v0}, Lcom/shabakaty/downloader/fd3;-><init>(Ljava/lang/Object;)V

    const v3, 0x7f120138

    move-object v1, v0

    move-object v2, v7

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/ed3;->b(Ljava/util/ArrayList;ILjava/lang/String;ILcom/shabakaty/downloader/rm1;)V

    .line 18
    new-instance v1, Lcom/shabakaty/downloader/pl4;

    invoke-direct {v1}, Lcom/shabakaty/downloader/pl4;-><init>()V

    iget-object v0, v0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    const v2, 0x7f12007f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "context.getString(R.string.change_other_subtitles_settings_txt)"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/pl4;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/shabakaty/downloader/SubtitleSettingsPlayerClick;

    iget-object v2, p0, Lcom/shabakaty/downloader/nd3;->receiver:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ed3;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/SubtitleSettingsPlayerClick;-><init>(Lcom/shabakaty/downloader/ed3;)V

    iput-object v0, v1, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/on$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/on$a;-><init>()V

    .line 20
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/on$a;->a(Ljava/util/List;)Lcom/shabakaty/downloader/on$a;

    return-object v0
.end method
