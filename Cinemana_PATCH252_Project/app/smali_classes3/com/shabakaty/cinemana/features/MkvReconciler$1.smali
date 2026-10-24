.class final Lcom/shabakaty/cinemana/features/MkvReconciler$1;
.super Ljava/lang/Object;
.source "MkvReconciler.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileAll()V

    return-void
.end method
