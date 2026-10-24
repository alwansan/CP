.class public Lcom/facebook/appevents/AppEvent$SerializationProxyV2;
.super Ljava/lang/Object;
.source "AppEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializationProxyV2"
.end annotation


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:Z

.field public final t:Z

.field public final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/facebook/appevents/AppEvent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->r:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->s:Z

    .line 4
    iput-boolean p3, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->t:Z

    .line 5
    iput-object p4, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->u:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v6, Lcom/facebook/appevents/AppEvent;

    iget-object v1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->r:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->s:Z

    iget-boolean v3, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->t:Z

    iget-object v4, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->u:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/facebook/appevents/AppEvent$1;)V

    return-object v6
.end method
