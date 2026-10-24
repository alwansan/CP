.class public Lzendesk/belvedere/p;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/p$a;,
        Lzendesk/belvedere/p$b;
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/xb3;

.field public b:Lzendesk/belvedere/p$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lzendesk/belvedere/p;->b:Lzendesk/belvedere/p$a;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/xb3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/xb3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzendesk/belvedere/p;->a:Lcom/shabakaty/downloader/xb3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/ld0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/cp2;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/cp2;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/cp2;

    .line 3
    iget-boolean v2, v1, Lcom/shabakaty/downloader/cp2;->r:Z

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/cp2;->u:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, v1, Lcom/shabakaty/downloader/cp2;->u:Ljava/lang/String;

    .line 8
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/ld0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
