.class public final Lcom/shabakaty/downloader/g3;
.super Lcom/shabakaty/downloader/zw2;
.source "ActivityNavigatorDestinationBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/zw2<",
        "Landroidx/navigation/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final g:Landroid/content/Context;

.field public h:Lcom/shabakaty/downloader/gc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gc2<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/navigation/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/zw2;-><init>(Landroidx/navigation/h;I)V

    .line 2
    iget-object p1, p1, Landroidx/navigation/a;->a:Landroid/content/Context;

    const-string p2, "navigator.context"

    .line 3
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/g3;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c()Landroidx/navigation/c;
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/zw2;->c()Landroidx/navigation/c;

    move-result-object v0

    check-cast v0, Landroidx/navigation/a$a;

    .line 2
    iget-object v1, v0, Landroidx/navigation/a$a;->z:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, v0, Landroidx/navigation/a$a;->z:Landroid/content/Intent;

    .line 4
    :cond_0
    iget-object v1, v0, Landroidx/navigation/a$a;->z:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/g3;->h:Lcom/shabakaty/downloader/gc2;

    if-eqz v1, :cond_2

    .line 6
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/shabakaty/downloader/g3;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v1, v0, Landroidx/navigation/a$a;->z:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, v0, Landroidx/navigation/a$a;->z:Landroid/content/Intent;

    .line 9
    :cond_1
    iget-object v1, v0, Landroidx/navigation/a$a;->z:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 10
    :cond_2
    iget-object v1, v0, Landroidx/navigation/a$a;->z:Landroid/content/Intent;

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, v0, Landroidx/navigation/a$a;->z:Landroid/content/Intent;

    .line 12
    :cond_3
    iget-object v1, v0, Landroidx/navigation/a$a;->z:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object v1, v0, Landroidx/navigation/a$a;->z:Landroid/content/Intent;

    if-nez v1, :cond_4

    .line 14
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, v0, Landroidx/navigation/a$a;->z:Landroid/content/Intent;

    .line 15
    :cond_4
    iget-object v1, v0, Landroidx/navigation/a$a;->z:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 16
    iput-object v2, v0, Landroidx/navigation/a$a;->A:Ljava/lang/String;

    return-object v0
.end method
