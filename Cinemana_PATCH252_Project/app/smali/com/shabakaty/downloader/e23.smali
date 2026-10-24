.class public Lcom/shabakaty/downloader/e23;
.super Ljava/lang/Object;
.source "OSDeviceState.java"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onesignal/OSSubscriptionState;Lcom/shabakaty/downloader/a43;Lcom/shabakaty/downloader/g23;Lcom/shabakaty/downloader/c43;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Lcom/onesignal/OSSubscriptionState;->s:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/e23;->a:Ljava/lang/String;

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
