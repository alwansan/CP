.class public final Lcom/onesignal/z0;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/onesignal/x0$d;

.field public final synthetic s:I

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/onesignal/x0$d;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/z0;->r:Lcom/onesignal/x0$d;

    iput p2, p0, Lcom/onesignal/z0;->s:I

    iput-object p3, p0, Lcom/onesignal/z0;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/onesignal/z0;->u:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onesignal/z0;->r:Lcom/onesignal/x0$d;

    iget v1, p0, Lcom/onesignal/z0;->s:I

    iget-object v2, p0, Lcom/onesignal/z0;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/onesignal/z0;->u:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onesignal/x0$d;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
