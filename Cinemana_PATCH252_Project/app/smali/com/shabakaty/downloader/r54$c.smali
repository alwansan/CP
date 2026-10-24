.class public final Lcom/shabakaty/downloader/r54$c;
.super Lcom/shabakaty/downloader/af2;
.source "ShowMoreViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/r54;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/util/List<",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        ">;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/r54;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r54;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/r54$c;->r:Lcom/shabakaty/downloader/r54;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/r54$c;->r:Lcom/shabakaty/downloader/r54;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/r54;->h:Lcom/shabakaty/downloader/r54$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 5
    :goto_1
    iput-boolean v3, v0, Lcom/shabakaty/downloader/r54$a;->b:Z

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/r54$c;->r:Lcom/shabakaty/downloader/r54;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/r54;->i:Lcom/shabakaty/downloader/mj;

    .line 8
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/zi2;->a(Lcom/shabakaty/downloader/mj;Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/r54$c;->r:Lcom/shabakaty/downloader/r54;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/r54;->h:Lcom/shabakaty/downloader/r54$a;

    .line 11
    iget-boolean v3, v0, Lcom/shabakaty/downloader/r54$a;->b:Z

    if-nez v3, :cond_2

    .line 12
    iget v3, v0, Lcom/shabakaty/downloader/r54$a;->a:I

    add-int/2addr v3, v2

    .line 13
    iput v3, v0, Lcom/shabakaty/downloader/r54$a;->a:I

    :cond_2
    if-nez p1, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->customArTitle:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    :goto_2
    if-eqz v1, :cond_c

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/r54$c;->r:Lcom/shabakaty/downloader/r54;

    .line 18
    iget-object v0, v0, Lcom/shabakaty/downloader/r54;->g:Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/shabakaty/downloader/r54$c;->r:Lcom/shabakaty/downloader/r54;

    .line 20
    sget-object v2, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "en"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 21
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/o54;

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_9

    goto :goto_3

    .line 22
    :cond_9
    iget-object v2, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->customEnTitle:Ljava/lang/String;

    .line 23
    :goto_3
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/o54;->R(Ljava/lang/String;)V

    goto :goto_5

    .line 24
    :cond_a
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/o54;

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_b

    goto :goto_4

    .line 25
    :cond_b
    iget-object v2, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->customArTitle:Ljava/lang/String;

    .line 26
    :goto_4
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/o54;->R(Ljava/lang/String;)V

    .line 27
    :cond_c
    :goto_5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
