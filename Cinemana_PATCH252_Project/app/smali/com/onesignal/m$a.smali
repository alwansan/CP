.class public Lcom/onesignal/m$a;
.super Ljava/lang/Object;
.source "InAppMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/m;->d(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/app/Activity;

.field public final synthetic s:Lcom/onesignal/m;


# direct methods
.method public constructor <init>(Lcom/onesignal/m;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/m$a;->s:Lcom/onesignal/m;

    iput-object p2, p0, Lcom/onesignal/m$a;->r:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/m$a;->s:Lcom/onesignal/m;

    iget-object v1, p0, Lcom/onesignal/m$a;->r:Landroid/app/Activity;

    .line 2
    invoke-virtual {v0, v1}, Lcom/onesignal/m;->d(Landroid/app/Activity;)V

    return-void
.end method
