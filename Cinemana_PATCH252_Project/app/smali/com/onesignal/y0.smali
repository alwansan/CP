.class public final Lcom/onesignal/y0;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/onesignal/x0$d;

.field public final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onesignal/x0$d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/y0;->r:Lcom/onesignal/x0$d;

    iput-object p2, p0, Lcom/onesignal/y0;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/y0;->r:Lcom/onesignal/x0$d;

    iget-object v1, p0, Lcom/onesignal/y0;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onesignal/x0$d;->b(Ljava/lang/String;)V

    return-void
.end method
