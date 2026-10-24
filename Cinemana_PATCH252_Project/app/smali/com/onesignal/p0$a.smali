.class public final Lcom/onesignal/p0$a;
.super Ljava/lang/Object;
.source "OSViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/p0;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/p0$a;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/p0$a;->s:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/onesignal/p0$a;->r:Ljava/lang/String;

    new-instance v2, Lcom/onesignal/p0$a$a;

    invoke-direct {v2, p0, v0}, Lcom/onesignal/p0$a$a;-><init>(Lcom/onesignal/p0$a;Lcom/onesignal/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/a;->a(Ljava/lang/String;Lcom/onesignal/a$b;)V

    :cond_0
    return-void
.end method
