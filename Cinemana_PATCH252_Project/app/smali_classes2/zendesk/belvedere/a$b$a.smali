.class public Lzendesk/belvedere/a$b$a;
.super Ljava/lang/Object;
.source "BelvedereUi.java"

# interfaces
.implements Lzendesk/belvedere/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/a$b;->a(Lcom/shabakaty/downloader/r9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzendesk/belvedere/c;

.field public final synthetic b:Lzendesk/belvedere/a$b;


# direct methods
.method public constructor <init>(Lzendesk/belvedere/a$b;Lzendesk/belvedere/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/a$b$a;->b:Lzendesk/belvedere/a$b;

    iput-object p2, p0, Lzendesk/belvedere/a$b$a;->a:Lzendesk/belvedere/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/cp2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/a$b$a;->a:Lzendesk/belvedere/c;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4
    new-instance v2, Lzendesk/belvedere/a$b$a$a;

    invoke-direct {v2, p0, p1, v0, v1}, Lzendesk/belvedere/a$b$a$a;-><init>(Lzendesk/belvedere/a$b$a;Ljava/util/List;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
