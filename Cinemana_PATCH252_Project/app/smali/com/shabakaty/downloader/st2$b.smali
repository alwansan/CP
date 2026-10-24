.class public final Lcom/shabakaty/downloader/st2$b;
.super Lcom/shabakaty/downloader/af2;
.source "MiscBindingAdapter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Landroid/view/View;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ih2;

.field public final synthetic s:Lcom/shabakaty/downloader/mm0;

.field public final synthetic t:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ih2;Lcom/shabakaty/downloader/mm0;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/st2$b;->r:Lcom/shabakaty/downloader/ih2;

    iput-object p2, p0, Lcom/shabakaty/downloader/st2$b;->s:Lcom/shabakaty/downloader/mm0;

    iput-object p3, p0, Lcom/shabakaty/downloader/st2$b;->t:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/st2$b;->r:Lcom/shabakaty/downloader/ih2;

    invoke-static {p1}, Lcom/shabakaty/downloader/nh3;->t(Lcom/shabakaty/downloader/se0;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/st2$b;->s:Lcom/shabakaty/downloader/mm0;

    iget-object v0, p0, Lcom/shabakaty/downloader/st2$b;->t:Landroid/view/View;

    check-cast p1, Lcom/shabakaty/downloader/lm0;

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/lm0;->a:Lcom/shabakaty/downloader/lm0$a;

    iget p1, p1, Lcom/shabakaty/downloader/lm0;->b:I

    invoke-interface {v1, p1, v0}, Lcom/shabakaty/downloader/lm0$a;->d(ILandroid/view/View;)V

    .line 5
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
