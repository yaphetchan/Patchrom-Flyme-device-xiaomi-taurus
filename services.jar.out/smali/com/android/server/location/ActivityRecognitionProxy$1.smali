.class Lcom/android/server/location/ActivityRecognitionProxy$1;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ActivityRecognitionProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/ActivityRecognitionHardware;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ActivityRecognitionProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/ActivityRecognitionProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/ActivityRecognitionProxy;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/location/ActivityRecognitionProxy$1;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy$1;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    iget-object v1, p0, Lcom/android/server/location/ActivityRecognitionProxy$1;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    invoke-static {v1}, Lcom/android/server/location/ActivityRecognitionProxy;->-get0(Lcom/android/server/location/ActivityRecognitionProxy;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/location/ActivityRecognitionProxy;->-wrap0(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/hardware/location/ActivityRecognitionHardware;)V

    .line 50
    return-void
.end method
