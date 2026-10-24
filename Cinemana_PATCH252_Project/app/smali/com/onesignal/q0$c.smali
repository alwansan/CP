.class public final Lcom/onesignal/q0$c;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/q0;->y(Lcom/onesignal/q0$r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/onesignal/q0$r;


# direct methods
.method public constructor <init>(Lcom/onesignal/q0$r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/q0$c;->r:Lcom/onesignal/q0$r;

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

    const-string v1, "Running getTags() operation from pending queue."

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/onesignal/q0$c;->r:Lcom/onesignal/q0$r;

    invoke-static {v0}, Lcom/onesignal/q0;->y(Lcom/onesignal/q0$r;)V

    return-void
.end method
