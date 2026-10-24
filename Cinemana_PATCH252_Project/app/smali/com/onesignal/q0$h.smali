.class public final Lcom/onesignal/q0$h;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/q0;->M(Lcom/onesignal/q0$u;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/onesignal/q0$u;

.field public final synthetic s:Z


# direct methods
.method public constructor <init>(Lcom/onesignal/q0$u;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/q0$h;->r:Lcom/onesignal/q0$u;

    iput-boolean p2, p0, Lcom/onesignal/q0$h;->s:Z

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

    const-string v1, "Running promptLocation() operation from pending queue."

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/onesignal/q0$h;->r:Lcom/onesignal/q0$u;

    iget-boolean v1, p0, Lcom/onesignal/q0$h;->s:Z

    invoke-static {v0, v1}, Lcom/onesignal/q0;->M(Lcom/onesignal/q0$u;Z)V

    return-void
.end method
