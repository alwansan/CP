.class public Lcom/onesignal/k1;
.super Ljava/lang/Object;
.source "TrackAmazonPurchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/k1$b;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Lcom/onesignal/k1$b;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/onesignal/k1;->b:Z

    .line 3
    iput-object p1, p0, Lcom/onesignal/k1;->a:Landroid/content/Context;

    :try_start_0
    const-string p1, "com.amazon.device.iap.internal.d"

    .line 4
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "d"

    new-array v2, v0, [Ljava/lang/Class;

    .line 5
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/k1;->d:Ljava/lang/Object;

    const-string v0, "f"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/k1;->e:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    new-instance p1, Lcom/onesignal/k1$b;

    invoke-direct {p1, p0, v2}, Lcom/onesignal/k1$b;-><init>(Lcom/onesignal/k1;Lcom/onesignal/k1$a;)V

    iput-object p1, p0, Lcom/onesignal/k1;->c:Lcom/onesignal/k1$b;

    .line 9
    iget-object v1, p0, Lcom/onesignal/k1;->e:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/onesignal/k1;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/iap/PurchasingListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-boolean v0, p0, Lcom/onesignal/k1;->b:Z

    .line 11
    invoke-virtual {p0}, Lcom/onesignal/k1;->c()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/onesignal/k1;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/onesignal/k1;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/onesignal/k1;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/onesignal/k1;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/onesignal/k1;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/onesignal/k1;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "Error adding Amazon IAP listener."

    .line 1
    invoke-static {v0, v1, p0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/onesignal/k1;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/k1;->e:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/onesignal/k1;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/iap/PurchasingListener;

    .line 3
    iget-object v1, p0, Lcom/onesignal/k1;->c:Lcom/onesignal/k1$b;

    if-eq v0, v1, :cond_1

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/onesignal/k1;->c()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/k1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/onesignal/k1;->c:Lcom/onesignal/k1$b;

    invoke-static {v0, v1}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    return-void
.end method
