.class public Lzendesk/messaging/ui/MessagePopUpHelper;
.super Ljava/lang/Object;
.source "MessagePopUpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/ui/MessagePopUpHelper$Option;
    }
.end annotation


# direct methods
.method public static createOnMenuItemClickListener(Lzendesk/messaging/ui/MessageActionListener;Ljava/lang/String;)Lcom/shabakaty/downloader/fe3$a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lzendesk/messaging/ui/MessagePopUpHelper$1;

    invoke-direct {v0, p0, p1}, Lzendesk/messaging/ui/MessagePopUpHelper$1;-><init>(Lzendesk/messaging/ui/MessageActionListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createPopUpMenu(Landroid/view/View;ILcom/shabakaty/downloader/fe3$a;)Lcom/shabakaty/downloader/fe3;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fe3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/shabakaty/downloader/fe3;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    new-instance p0, Lcom/shabakaty/downloader/wh4;

    invoke-direct {p0, v1}, Lcom/shabakaty/downloader/wh4;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/fe3;->b:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/wh4;->inflate(ILandroid/view/Menu;)V

    .line 4
    iput-object p2, v0, Lcom/shabakaty/downloader/fe3;->d:Lcom/shabakaty/downloader/fe3$a;

    const p0, 0x800005

    .line 5
    iget-object p1, v0, Lcom/shabakaty/downloader/fe3;->c:Landroidx/appcompat/view/menu/h;

    .line 6
    iput p0, p1, Landroidx/appcompat/view/menu/h;->g:I

    return-object v0
.end method

.method public static showPopUpMenu(Landroid/view/View;Ljava/util/Set;Lzendesk/messaging/ui/MessageActionListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lzendesk/messaging/ui/MessagePopUpHelper$Option;",
            ">;",
            "Lzendesk/messaging/ui/MessageActionListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lzendesk/messaging/ui/MessagePopUpHelper;->createOnMenuItemClickListener(Lzendesk/messaging/ui/MessageActionListener;Ljava/lang/String;)Lcom/shabakaty/downloader/fe3$a;

    move-result-object p2

    .line 2
    sget p3, Lzendesk/messaging/R$menu;->zui_message_options_copy_retry_delete:I

    invoke-static {p0, p3, p2}, Lzendesk/messaging/ui/MessagePopUpHelper;->createPopUpMenu(Landroid/view/View;ILcom/shabakaty/downloader/fe3$a;)Lcom/shabakaty/downloader/fe3;

    move-result-object p0

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/fe3;->b:Landroidx/appcompat/view/menu/e;

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object p2

    sget-object p3, Lzendesk/messaging/ui/MessagePopUpHelper$Option;->COPY:Lzendesk/messaging/ui/MessagePopUpHelper$Option;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/fe3;->b:Landroidx/appcompat/view/menu/e;

    const/4 p3, 0x1

    .line 6
    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object p2

    sget-object p3, Lzendesk/messaging/ui/MessagePopUpHelper$Option;->RETRY:Lzendesk/messaging/ui/MessagePopUpHelper$Option;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/fe3;->b:Landroidx/appcompat/view/menu/e;

    const/4 p3, 0x2

    .line 8
    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object p2

    sget-object p3, Lzendesk/messaging/ui/MessagePopUpHelper$Option;->DELETE:Lzendesk/messaging/ui/MessagePopUpHelper$Option;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9
    iget-object p0, p0, Lcom/shabakaty/downloader/fe3;->c:Landroidx/appcompat/view/menu/h;

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
