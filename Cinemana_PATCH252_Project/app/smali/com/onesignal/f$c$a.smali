.class public Lcom/onesignal/f$c$a;
.super Lcom/onesignal/x0$d;
.source "FocusTimeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/f$c;->j(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onesignal/f$c;


# direct methods
.method public constructor <init>(Lcom/onesignal/f$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/f$c$a;->a:Lcom/onesignal/f$c;

    invoke-direct {p0}, Lcom/onesignal/x0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "sending on_focus Failed"

    .line 1
    invoke-static {v0, p1, p3, p2}, Lcom/onesignal/q0;->I(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/onesignal/f$c$a;->a:Lcom/onesignal/f$c;

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/onesignal/f$c;->h(J)V

    return-void
.end method
