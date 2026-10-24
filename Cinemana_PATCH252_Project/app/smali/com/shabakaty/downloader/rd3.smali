.class public final synthetic Lcom/shabakaty/downloader/rd3;
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

    const-string v4, "showSubtitleLanguageBottomList"

    const-string v5, "showSubtitleLanguageBottomList()Lcom/shabakaty/cinemana/utils/bottom_sheet_list/BottomSheetList$Builder;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/co1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ed3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ed3;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 5
    new-instance v11, Lcom/shabakaty/downloader/pl4;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;ZI)V

    .line 6
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ed3;->g(Lcom/shabakaty/cinemana/domain/models/local/Subtitle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/shabakaty/downloader/pl4;->a(Ljava/lang/String;)V

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/qd3;

    invoke-direct {v4, v0, v3}, Lcom/shabakaty/downloader/qd3;-><init>(Lcom/shabakaty/downloader/ed3;Lcom/shabakaty/cinemana/domain/models/local/Subtitle;)V

    .line 8
    iput-object v4, v11, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    const/4 v3, 0x0

    .line 9
    iput-boolean v3, v11, Lcom/shabakaty/downloader/pl4;->e:Z

    .line 10
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/pl4;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;ZI)V

    .line 12
    iget-object v3, v0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    const v4, 0x7f12013d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.from_file)"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/pl4;->a(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 13
    iput-boolean v3, v2, Lcom/shabakaty/downloader/pl4;->e:Z

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/gd3;

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/gd3;-><init>(Lcom/shabakaty/downloader/ed3;)V

    .line 15
    iput-object v3, v2, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/shabakaty/downloader/pl4;

    invoke-direct {v2}, Lcom/shabakaty/downloader/pl4;-><init>()V

    const-string v3, "\u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a"

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/pl4;->a(Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/shabakaty/downloader/pl4;->e:Z

    new-instance v3, Lcom/shabakaty/downloader/SequentialSubtitleClick;

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/SequentialSubtitleClick;-><init>(Lcom/shabakaty/downloader/ed3;)V

    iput-object v3, v2, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/shabakaty/downloader/pl4;

    invoke-direct {v2}, Lcom/shabakaty/downloader/pl4;-><init>()V

    const-string v3, "\u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a"

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/pl4;->a(Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/shabakaty/downloader/pl4;->e:Z

    new-instance v3, Lcom/shabakaty/downloader/SequentialSubtitleSettingsClick;

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/SequentialSubtitleSettingsClick;-><init>(Lcom/shabakaty/downloader/ed3;)V

    iput-object v3, v2, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/on$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/on$a;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/on$a;->a(Ljava/util/List;)Lcom/shabakaty/downloader/on$a;

    return-object v0
.end method
