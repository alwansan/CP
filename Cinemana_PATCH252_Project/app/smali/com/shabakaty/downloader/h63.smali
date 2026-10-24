.class public final Lcom/shabakaty/downloader/h63;
.super Ljava/lang/Object;
.source "OnCheckedChangeListener.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/h63$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/h63$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/h63$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/h63;->a:Lcom/shabakaty/downloader/h63$a;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/h63;->a:Lcom/shabakaty/downloader/h63$a;

    check-cast p1, Lcom/shabakaty/downloader/in;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/hn;->O:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/aj4;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/aj4;->a:Lcom/shabakaty/downloader/tm1;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qv4;

    :cond_2
    return-void
.end method
