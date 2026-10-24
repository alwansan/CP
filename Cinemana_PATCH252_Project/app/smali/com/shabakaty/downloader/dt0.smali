.class public final Lcom/shabakaty/downloader/dt0;
.super Lcom/shabakaty/downloader/zw2;
.source "DialogFragmentNavigatorDestinationBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/zw2<",
        "Landroidx/navigation/fragment/DialogFragmentNavigator$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic g:I

.field public final h:Lcom/shabakaty/downloader/gc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gc2<",
            "+",
            "Lcom/shabakaty/downloader/ct0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/navigation/fragment/DialogFragmentNavigator;ILcom/shabakaty/downloader/gc2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/dt0;->g:I

    const-string v0, "fragmentClass"

    .line 1
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/zw2;-><init>(Landroidx/navigation/h;I)V

    iput-object p3, p0, Lcom/shabakaty/downloader/dt0;->h:Lcom/shabakaty/downloader/gc2;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/dt0;->g:I

    const-string v0, "fragmentClass"

    .line 3
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/zw2;-><init>(Landroidx/navigation/h;I)V

    iput-object p3, p0, Lcom/shabakaty/downloader/dt0;->h:Lcom/shabakaty/downloader/gc2;

    return-void
.end method


# virtual methods
.method public c()Landroidx/navigation/c;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/dt0;->g:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-super {p0}, Lcom/shabakaty/downloader/zw2;->c()Landroidx/navigation/c;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/DialogFragmentNavigator$a;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/dt0;->h:Lcom/shabakaty/downloader/gc2;

    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Landroidx/navigation/fragment/DialogFragmentNavigator$a;->z:Ljava/lang/String;

    return-object v0

    .line 4
    :goto_0
    invoke-super {p0}, Lcom/shabakaty/downloader/zw2;->c()Landroidx/navigation/c;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/a$a;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/dt0;->h:Lcom/shabakaty/downloader/gc2;

    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6
    iput-object v1, v0, Landroidx/navigation/fragment/a$a;->z:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
