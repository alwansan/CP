.class public Lcom/facebook/common/time/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/facebook/common/time/Clock;


# static fields
.field public static final a:Lcom/facebook/common/time/SystemClock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/common/time/SystemClock;

    invoke-direct {v0}, Lcom/facebook/common/time/SystemClock;-><init>()V

    sput-object v0, Lcom/facebook/common/time/SystemClock;->a:Lcom/facebook/common/time/SystemClock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
