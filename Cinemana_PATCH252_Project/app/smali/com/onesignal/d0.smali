.class public Lcom/onesignal/d0;
.super Lcom/shabakaty/downloader/zl2;
.source "OSNotificationDataController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/d0$a;
    }
.end annotation


# instance fields
.field public final s:Lcom/shabakaty/downloader/q73;

.field public final t:Lcom/shabakaty/downloader/b33;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q73;Lcom/shabakaty/downloader/b33;)V
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/onesignal/d0;->s:Lcom/shabakaty/downloader/q73;

    .line 3
    iput-object p2, p0, Lcom/onesignal/d0;->t:Lcom/shabakaty/downloader/b33;

    return-void
.end method
