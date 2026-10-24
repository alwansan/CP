.class public Lcom/onesignal/l1$a;
.super Ljava/lang/Object;
.source "TrackGooglePurchase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/l1;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/onesignal/l1;


# direct methods
.method public constructor <init>(Lcom/onesignal/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/l1$a;->r:Lcom/onesignal/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    :try_start_0
    const-string p1, "com.android.vending.billing.IInAppBillingService$Stub"

    .line 1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_1

    aget-object v5, p1, v2

    .line 3
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 4
    array-length v7, v6

    if-ne v7, v4, :cond_0

    aget-object v6, v6, v1

    const-class v7, Landroid/os/IBinder;

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 5
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6
    iget-object p1, p0, Lcom/onesignal/l1$a;->r:Lcom/onesignal/l1;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    iput-object p2, p1, Lcom/onesignal/l1;->b:Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/onesignal/l1$a;->r:Lcom/onesignal/l1;

    .line 9
    iget-boolean p2, p1, Lcom/onesignal/l1;->h:Z

    if-eqz p2, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/shabakaty/downloader/ap4;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ap4;-><init>(Lcom/onesignal/l1;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/16 p1, -0x63

    .line 1
    sput p1, Lcom/onesignal/l1;->i:I

    .line 2
    iget-object p1, p0, Lcom/onesignal/l1$a;->r:Lcom/onesignal/l1;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lcom/onesignal/l1;->b:Ljava/lang/Object;

    return-void
.end method
