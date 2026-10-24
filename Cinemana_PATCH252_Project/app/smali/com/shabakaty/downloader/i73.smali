.class public final Lcom/shabakaty/downloader/i73;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/a33;

    const-string v1, "Running onAppLostFocus() operation from a pending task queue."

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/onesignal/q0;->h()V

    return-void
.end method
